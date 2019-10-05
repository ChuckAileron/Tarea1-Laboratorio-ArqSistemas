class ClasesController < ApplicationController
  def index
    @clases = Clase.all
  end

  def show
    @clase = Clase.find(params[:id])
  end

  def new
    @clase = Clase.new
  end

  def edit
    @clase = Clase.find(params[:id])
  end

  def create
    @clase = Clase.new(clase_params)
 
    if @clase.save
      redirect_to @clase
    else
      render 'new'
    end
  end

  def update
    @clase = Clase.find(params[:id])
 
    if @clase.update(clase_params)
      redirect_to @clase
    else
      render 'edit'
    end
  end

  def destroy
    @clase = Clase.find(params[:id])
    @clase.destroy
 
    redirect_to clases_path
  end

  private
    def clase_params
      params.require(:clase).permit(:nombre, :periodo, :profesor_id)
    end
end
