class ComentariosController < ApplicationController
  def create
    @clase = Clase.find(params[:clase_id])
    @comentario = @clase.comentarios.create(comentario_params)
    redirect_to clase_path(@clase)
  end
 
  private
    def comentario_params
      params.require(:comentario).permit(:texto)
    end
end
