class UsuariosController < ApplicationController
    def index
        @usuarios = Usuario.all
    end
    
    def new
        @usuario = Usuario.new
    end

    def create
        @usuario = Usuario.new(usuario_params)
        if @usuario.save
            flash[:success] = "Bienvenido #{@usuario.nombre} #{@usuario.apellido} a Pizza Builder!"
            redirect_to usuario_path(@usuario)
        else
            render 'new'
        end
    end

    def show
        @usuario = Usuario.find(params[:id])
        # Paginate the recipes in chefs show page
    end

    def edit
        @usuario = Usuario.find(params[:id])
    end

    def update
        @usuario = Usuario.find(params[:id])
        if @usuario.update(usuario_params)
            flash[:success] = "Su cuenta ha sido actualizada exitosamente"
            redirect_to @usuario
        else
            render 'edit'
        end
    end

    def destroy
        @usuario = Usuario.find(params[:id])
        @usuario.destroy
        flash[:danger] = "Chef and all associated recipes have been deleted!"
        redirect_to usuarios_path
        
    end

    private

        def usuario_params
            params.require(:usuario).permit(:nombre, :apellido, :email)
        end
end