class EvaluacionsController < ApplicationController
  def create
    @profesor = Profesor.find(params[:profesor_id])
    @evaluacion = @profesor.evaluacions.create(evaluacion_params)
    redirect_to profesor_path(@profesor)
  end
 
  private
    def evaluacion_params
      params.require(:evaluacion).permit(:nota, :comentario)
    end
end
