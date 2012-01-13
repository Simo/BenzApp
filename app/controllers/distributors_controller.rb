class DistributorsController < ApplicationController
  def index
    @distributors = Distributor.where('longitude is not null')
    
    respond_to do |format|
      format.html
      format.json { render :json => @distributors }
    end

  end

  def show
    @distributor = Distributor.find(params[:id])
  end

  def new
    @distributor = Distributor.new
  end

  def create
    @distributor = Distributor.new(params[:distributor])
    if @distributor.save
      redirect_to @distributor, :notice => "Successfully created distributor."
    else
      render :action => 'new'
    end
  end

  def edit
    @distributor = Distributor.find(params[:id])
  end

  def update
    @distributor = Distributor.find(params[:id])
    if @distributor.update_attributes(params[:distributor])
      redirect_to @distributor, :notice  => "Successfully updated distributor."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @distributor = Distributor.find(params[:id])
    @distributor.destroy
    redirect_to distributors_url, :notice => "Successfully destroyed distributor."
  end
end
