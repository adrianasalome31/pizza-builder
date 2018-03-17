class IngredientesController < ApplicationController
  before_action :set_ingrediente, only: [:show, :edit, :update, :destroy]

  # GET /ingredientes
  # GET /ingredientes.json
  def index
    @ingredientes = Ingrediente.all
  end

  # GET /ingredientes/1
  # GET /ingredientes/1.json
  def show
  end

  # GET /ingredientes/new
  def new
    @ingrediente = Ingrediente.new
    @tipos = Tipo.all
  end

  # GET /ingredientes/1/edit
  def edit
  end

  # POST /ingredientes
  # POST /ingredientes.json
  def create
    @ingrediente = Ingrediente.new(ingrediente_params)

    if @ingrediente.save
      flash[:success] = "Ingrediente agregado exitosamente "
      redirect_to ingrediente_path(@ingrediente)
    else
      render 'new'
    end
  end

  # PATCH/PUT /ingredientes/1
  # PATCH/PUT /ingredientes/1.json
  def update
    if @ingrediente.update(ingrediente_params)
      flash[:success] = "Ingrediente editado exitosamente"
      redirect_to ingrediente_path(@ingrediente)
    else
      render 'ingredientes/edit'
    end
  end

  # DELETE /ingredientes/1
  # DELETE /ingredientes/1.json
  def destroy
    @ingrediente.destroy
    flash[:danger] = "Ingrediente eliminado exitosamente"
    redirect_to ingredientes_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediente
      @ingrediente = Ingrediente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingrediente_params
      params.require(:ingrediente).permit(:nombre, :precio, :tipo_id, :imagen)
    end
end
