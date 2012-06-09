class AccusationsController < ApplicationController
  skip_before_filter :authenticate_user!, :only => :index
  
  respond_to :html, :json
  
  def index
    @accusations = Accusation.page params[:page]
    
    respond_with @accusations
  end
  
  def show
    @accusation = Accusation.find(params[:id])
    respond_with @accusation
  end
  
  def new
    @accusation = Accusation.new
    
    respond_with @accusation
  end
  
  def edit
    @accusation = Accusation.find(params[:id])

    respond_with @accusation
  end
  
  def create
    @accusation = Accusation.new(params[:accusation])
    
    if @accusation.save!
      redirect_to @accusation, :notice => "Accusation successfully created"
    else
      redirect_to new_accusation_path, :alert => "Accusation could not be created"
    end
  end
  
  def update
    @accusation = Accusation.find(params[:id])
    if @accusation.update_attributes(params[:accusation])
      redirect_to @accusation, :notice => "Accusation successfully updated"
    else
      redirect_to edit_accusation_path(@accusation), :alert => "Accusation could not be updated"
    end
  end

  def delete
    @accusation = Accusation.find(params[:id])
    if @accusation.destroy
      redirect_to accusations_path, :notice => "Accusation deleted"
    else
      redirect_to @accusation, :alert => "An error has been"
    end
  end
end
