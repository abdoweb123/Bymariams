<?php

namespace App\Functions;

class WhatsApp
{
    public static function SendOTP($phone)
    {
        $otp = rand(100000, 999999);

        $body = '';
        $body .= '\n *'.env("APP_NAME").' App* \n';
        $body .= '\n *Your Verification Code Is* '.$otp.' \n';
        $body .= '\n Powered By *Emcan Solutions*';

        self::SendWhatsApp($phone, $body);

        return $otp;
    }

    public static function SendOrder($Order)
    {
        $message = '\n *An Order Has Been Placed By '.$Order->client->name.' ('.env('APP_NAME').')* \n';
        $message .= '\n *Order Number :* '.$Order->id;
        if ($Order->status == 5) {
            $message .= '\n *'.__('trans.not_complete').'* ';
        }

        $message .= '\n *Payment :* '.$Order->PaymentMethod?->title_en;

        $message .= '\n *Client Name :* '.$Order->client->name;
        $message .= '\n *Client Number :* '.$Order->client->phone;
        $message .= '\n *Order Time :* '.$Order->created_at;

//        if ($Order->delivery_id == 1) {
//            $message .= '\n *Additional Directions :* '.$Order->address->additional_directions.' \n';
//        } elseif ($Order->delivery_id == 2) {
//            $message .= '\n *Type :* '.'Pick Up'.' \n';
//        }


        if ($Order->delivery_id == 1 && $Order->address->country_code == 'BH') {
            $message .= '\n *'.__('trans.region').' :* '.$Order->address->region->title();
            if ($Order->address->road) {
                $message .= '\n *'.__('trans.block').' :* '.$Order->address->block;
            }
            if ($Order->address->building_no) {
                $message .= '\n *'.__('trans.road').' :* '.$Order->address->road;
            }
            if ($Order->address->floor_no) {
                $message .= '\n *'.__('trans.building').' :* '.$Order->address->building_no;
            }
            if ($Order->address->apartment) {
                $message .= '\n *'.__('trans.floor').' :* '.$Order->address->floor_no;
            }
            if ($Order->address->type) {
                $message .= '\n *'.__('trans.apartment').' :* '.$Order->address->apartment;
            }
            if ($Order->address->additional_directions) {
                $message .= '\n *'.__('trans.type').' :* '.$Order->address->type;
            }
            $message .= '\n *'.__('trans.additional_directions').' :* '.$Order->address->additional_directions.' \n';
        }

        elseif ($Order->delivery_id == 1 && $Order->address->country_code !== 'BH') {
            if ($Order->address->city) {
                $message .= '\n *'.__('trans.city').' :* '.$Order->address->city;
            }
            if ($Order->address->address1 && $Order->address->address2) {
                $message .= '\n *'.__('trans.address').' :* '.$Order->address->address1.' ,'.$Order->address->address2.' ,';
            }
            if ($Order->address->state) {
                $message .= '\n *'.__('trans.state').' :* '.$Order->address->state;
            }
        }
        elseif ($Order->delivery_id == 2) {
            $message .= '\n *'.__('trans.type').' :* '.__('trans.Pickup').' \n';
        }


        $message .= '\n *Products :* \n';
        foreach ($Order->OrderProducts as $item) {
            $message .= '\n *Item :* '.strip_tags($item->Product->title_en);
            if ($item->Size) {
                $message .= '\n *Size :* '.$item->Size->title_en;
            }
            if ($item->Color) {
                $message .= '\n *Color :* '.$item->Color->title_en;
            }
            if ($item->width) {
                $message .= '\n *Width :* '.$item->width->title_en;
            }
            if ($item->chest_width) {
                $message .= '\n *Width :* '.$item->chest_width->title_en;
            }
            $message .= '\n *Price :* '.number_format(Country()->currancy_value * $item->price, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
            if ($item->note) {
                $message .= '\n *Note :* '.$item->note.'\n';
            }
        }
        $message .= '\n';
        $message .= '\n *SubTotal :* '.number_format(Country()->currancy_value * $Order->sub_total, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        if ($Order->discount > 0) {
            $message .= '\n *Discount :* '.number_format(Country()->currancy_value * $Order->discount, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        }
        if ($Order->vat > 0) {
            $message .= '\n *VAT :* '.number_format(Country()->currancy_value * $Order->vat, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        }
        if ($Order->coupon > 0) {
            $message .= '\n *Coupon :* '.number_format(Country()->currancy_value * $Order->coupon, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        }
        if ($Order->charge_cost > 0) {
            $message .= '\n *Delivery Cost :* '.number_format(Country()->currancy_value * $Order->charge_cost, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        }
        $message .= '\n *NetTotal :* '.number_format(Country()->currancy_value * $Order->net_total, Country()->decimals, '.', '').' '.Country()->currancy_code_en;
        $message .= '\n  \n';

        $message .= '\n '.setting('order_whatsapp_text_'.lang());
        $message .= '\n *Powered By Emcan Solutions* \n';

        self::SendWhatsApp($Order->client->phone_code.$Order->client->phone, $message); //to client
        self::SendWhatsApp(['+97338868876','0097332227206'], $message); //to admin
    }

    public static function GetToken()
    {
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => 'https://emcan.bh/api/UltraCredentials',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_POSTFIELDS => 'token=zuvzajw7goMh20q5YVu0&domain='.$_SERVER['SERVER_NAME'],
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_HTTPHEADER => [
                'content-type: application/x-www-form-urlencoded',
            ],
        ]);
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        return json_decode($response);
    }

    public static function SendWhatsApp($numbers, $message)
    {
        $EmcanWhats = self::GetToken();
        $instance = $EmcanWhats->instance;
        $token = $EmcanWhats->token;
        if ($EmcanWhats->active) {
            $numbers = is_array($numbers) ? $numbers : [$numbers];
            foreach ($numbers as $number) {
                $number = str_replace('++', '+', $number);
                $curl = curl_init();
                curl_setopt_array($curl, [
                    CURLOPT_URL => 'https://api.ultramsg.com/'.$instance.'/messages/chat',
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 30,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                    CURLOPT_POSTFIELDS => "token=$token&to=$number&body=$message&priority=1&referenceId=",
                    CURLOPT_HTTPHEADER => [
                        'content-type: application/x-www-form-urlencoded',
                    ],
                ]);
                $response = curl_exec($curl);
                $err = curl_error($curl);
                curl_close($curl);
            }
        }
    }
}
