//= require jquery3

    function recorrerImagenes() {

    }

    function mostrarImagenIngrediente() {
        $('.ingrediente_check:checkbox').each(function () {
            if(this.checked)
                $('#ingrediente_img'+this.value).fadeIn('slow');
            else
                $('#ingrediente_img'+this.value).fadeOut('slow');
        })
    }

    $(document).ready(function() {
        
        $('.ingrediente_check:checkbox').click(mostrarImagenIngrediente);

    });

    