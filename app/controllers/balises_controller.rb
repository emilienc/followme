class BalisesController < ApplicationController
  
  def signal
    @balise = Balise.find_by_code(params[:code])
    @lieu = Lieu.new
    @lieu.balise_id = @balise.id
    @lieu.lng =  params[:lng]
    @lieu.lat =  params[:lat]
    @lieu.save!
    respond_to do |format|
      format.xml { render :xml => @lieu}
    end
  end
  
  
  def activate
    @balise=Balise.new
    @balise.save!
    respond_to do |format|
      format.xml { render :xml => @balise }
    end
  end
  
  def index
    @balises = Balise.all
  end

  def show
    @balise = Balise.find(params[:id])
  end

  def new
    @balise = Balise.new
  end

  def create
    @balise = Balise.new(params[:balise])
    if @balise.save
      flash[:notice] = "Successfully created balise."
      redirect_to @balise
    else
      render :action => 'new'
    end
  end

  def edit
    @balise = Balise.find(params[:id])
  end

  def update
    @balise = Balise.find(params[:id])
    if @balise.update_attributes(params[:balise])
      flash[:notice] = "Successfully updated balise."
      redirect_to balise_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @balise = Balise.find(params[:id])
    @balise.destroy
    flash[:notice] = "Successfully destroyed balise."
    redirect_to balises_url
  end
end
