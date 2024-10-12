<table>
    <thead>
        <tr>
            <th style="text-align:center;">Product Name In Arabic</th>
            <th style="text-align:center;">Product Name In English</th>
            <th style="text-align:center;">Product Price</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($products as  $product)
            <tr>
                <td style="text-align: center; ">{{ $product['title_ar'] }}</td>
                <td style="text-align: center; ">{{ $product['title_en'] }}</td>
                <td style="text-align: center; ">{{ $product['price'] }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
