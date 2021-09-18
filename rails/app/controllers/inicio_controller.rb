class InicioController < ApplicationController
  def index
  end
  def maryvi
  end
  def show
    @name = params[:name].capitalize
  end  
end
