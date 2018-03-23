//= require jquery3

    function recorrerImagenes() {

    }

    function mostrarImagenIngrediente() {
        $('.ingrediente-check:checkbox').each(function () {
            if(this.checked)
                $('#ingrediente-img'+this.value).fadeIn('slow');
            else
                $('#ingrediente-img'+this.value).fadeOut('slow');
        })
    }

    $(document).ready(function() {
        
        $('.ingrediente-check:checkbox').click(mostrarImagenIngrediente);

    });

    