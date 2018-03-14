class TiposController < ApplicationController
    def index
        @tipos = Tipo.all
    end
    
    def new
        @tipo = Tipo.new
    end

    def create
        @tipo = Tipo.new(tipo_params)
        if @tipo.save
            flash[:success] = "Tipo de ingrediente agregado exitosamente"
            redirect_to tipo_path(@tipo)
        else
            render 'new'
        end
    end

    def show
        @tipo = Tipo.find(params[:id])
        # Paginate the recipes in chefs show page
    end

    def edit
        @tipo = Tipo.find(params[:id])
    end

    def update
        @tipo = Tipo.find(params[:id])
        if @tipo.update(tipo_params)
            flash[:success] = "Tipo de ingrediente actualizado exitosamente"
            redirect_to @tipo
        else
            render 'edit'
        end
    end

    def destroy
        @tipo = Tipo.find(params[:id])
        @tipo.destroy
        flash[:danger] = "Tipo de ingrediente eliminado"
        redirect_to tipos_path
        
    end

    private

        def tipo_params
            params.require(:tipo).permit(:nombre)
        end
end