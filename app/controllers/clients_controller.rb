class ClientsController < ApplicationController

  respond_to :html, :json
  
  def index
    @q = Client.search(params[:q])
    @clients = @q.result(:distinct => true)
    
    respond_with @clients
  end
  
  def show
    @client = Client.find(params[:id])
    
    respond_with @client
  end
  
  def new
    @client = Client.new
    
    respond_with @client
  end
  
  def edit
    @client = Client.find(params[:id])
    
    respond_with @client
  end
  
  def create
    @client = Client.new(params[:client])
    
    if @client.save
      redirect_to @client, :notice => "Client successfully created"
    else
      redirect_to new_client_path, :alert => "Client could not be created"
    end
  end
  
  def update
    @client = Client.find(params[:id])
    
    if @client.update_attributes(params[:client])
      redirect_to @client, :notice => "Client successfully updated"
    else
      redirect_to edit_client_path(@client), :alert => "Client could not be updated"
    end
  end

  def delete
    @client = Client.find(params[:id])
    
    if @client.destroy
      redirect_to clients_path, :notice => "Client deleted"
    else
      redirect_to @client, :alert => "An error has been"
    end
  end
end
