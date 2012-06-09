class AccoladesController < ApplicationController
  skip_before_filter :authenticate_user!, :only => :index
  before_filter :find_accolade, :only => [ :show, :edit, :update, :delete ]
  
  respond_to :html, :json
  
  def index
    @accolades = Accolade.page params[:page]
    
    respond_with @accolades
  end
  
  def show
    respond_with @accolade
  end
  
  def new
    @accolade = Accolade.new
    
    respond_with @accolade
  end
  
  def edit
    respond_with @accolade
  end
  
  def create
    @accolade = Accolade.new(params[:accolade])
    
    if @accolade.save
      redirect_to @accolade, :notice => "Accolade successfully created"
    else
      redirect_to new_accolade_path, :alert => "Accolade could not be created"
    end
  end
  
  def update
    if @accolade.update_attributes(params[:accolade])
      redirect_to @accolade, :notice => "Accolade successfully updated"
    else
      redirect_to edit_accolade_path(@accolade), :alert => "Accolade could not be updated"
    end
  end

  def delete
    if @accolade.destroy
      redirect_to accolades_path, :notice => "Accolade deleted"
    else
      redirect_to @accolade, :alert => "An error has been"
    end
  end

  private

  def find_accolade
    @accolade = Accolade.find(params[:id])
  end

end
