class AlumnoClasesController < ApplicationController
  def index
    @alumno_clases = AlumnoClase.all
  end

  def show
    @alumno_clase = AlumnoClase.find(params[:id])
  end

  def create
    @alumno = Alumno.find(params[:alumno_id])
    @alumno_clase = @alumno.alumno_clases.create(alumnoclase_params)
    redirect_to alumno_path(@alumno)
  end
 
  private
    def alumnoclase_params
      params.require(:alumno_clase).permit(:alumno_id, :clase_id)
    end
end
