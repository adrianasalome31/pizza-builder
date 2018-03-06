//= require jquery3

    function mostrarIngrediente(ingrediente_id, ingrediente){
        $('#'+ingrediente_id).change(function (){
            if (this.checked)
                $('#'+ingrediente).fadeIn('slow');
            else
                $('#'+ingrediente).fadeOut('slow');
        });
    }