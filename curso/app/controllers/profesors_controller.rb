class ProfesorsController < ApplicationController
  def index
    @profesors = Profesor.all
  end

  def show
    @profesor = Profesor.find(params[:id])
  end

  def new
    @profesor = Profesor.new
  end

  def edit
    @profesor = Profesor.find(params[:id])
  end

  def create
    @profesor = Profesor.new(profesor_params)
 
    if @profesor.save
      redirect_to @profesor
    else
      render 'new'
    end
  end

  def update
    @profesor = Profesor.find(params[:id])
 
    if @profesor.update(profesor_params)
      redirect_to @profesor
    else
      render 'edit'
    end
  end

  def destroy
    @profesor = Profesor.find(params[:id])
    @profesor.destroy
 
    redirect_to profesors_path
  end

  private
    def profesor_params
      params.require(:profesor).permit(:nombre, :rut, :correo)
    end

end
