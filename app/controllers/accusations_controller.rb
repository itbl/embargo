class AccusationsController < ApplicationController
  before_filter :find_model
  
  def index
    @accusations = 
  end

  

  private
  def find_model
    @model = Accusation.find(params[:id]) if params[:id]
  end
end
