@push('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.css" integrity="sha512-ngQ4IGzHQ3s/Hh8kMyG4FC74wzitukRMIcTOoKT3EyzFZCILOPF0twiXOQn75eDINUfKBYmzYn2AA8DkAk8veQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .note-editable ul{
          list-style: disc !important;
          list-style-position: inside !important;
        }
        
        .note-editable ol {
          list-style: decimal !important;
          list-style-position: inside !important;
        }
        .note-dropdown-menu {
            max-height: 200px; /* Set your desired max height */
            overflow-y: auto;
        }
    </style>
@endpush
@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.js" integrity="sha512-6F1RVfnxCprKJmfulcxxym1Dar5FsT/V2jiEUvABiaEiFWoQ8yHvqRM/Slf0qJKiwin6IDQucjXuolCfCKnaJQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <script>

        $(document).ready(function() {
            if ($('textarea:not(.mceNoEditor)').length > 0) {
                $('textarea:not(.mceNoEditor)').summernote({
                    tabsize: 2,
                    height: 300,
                    toolbar: [
                        ['style', ['style']],
                        ['font', ['bold', 'italic', 'underline', 'clear']],
                        ['fontname', ['fontname']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['table', ['table']],
                        ['insert', ['link']],
                        ['view', ['fullscreen']]
                    ]
                });
        
                // Handle click events on dropdown toggles
                $('.note-editor').on('click', '.note-btn.dropdown-toggle', function() {
                    var $this = $(this);
                    var isShown = $this.next('.dropdown-menu').hasClass('show');
                    
                    // Close all dropdowns
                    $('.note-editor .dropdown-menu').removeClass('show');
        
                    // If this one was not shown, show it
                    if (!isShown) {
                        $this.next('.dropdown-menu').addClass('show');
                    }
                });
        
                // Close dropdown when clicking outside
                $(document).on('click', function(e) {
                    if (!$(e.target).closest('.note-editor').length) {
                        $('.note-editor .dropdown-menu').removeClass('show');
                    }
                });
        
                // Close dropdown on menu item click
                $('.note-editor').on('click', '.dropdown-item, .note-color-btn, .note-btn-group.note-align .note-btn', function() {
                    $('.note-editor .dropdown-menu').removeClass('show');
                });
            }
        });
    </script>
@endpush