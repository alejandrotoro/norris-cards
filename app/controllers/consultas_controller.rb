class ConsultasController < ApplicationController
  
  def consultas
  	sql = ActiveRecord::Base.connection()
  	@consulta = sql.execute("select * from partidas")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consulta }
    end
  end
  
end
