class LieusController < ApplicationController

  def check
    @code = params[:code]
    @lieus = Balise.find_by_code(@code).lieus
   
  end

  # GET /lieus
  # GET /lieus.xml
  def index
    @lieus = Lieu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lieus }
    end
  end

  # GET /lieus/1
  # GET /lieus/1.xml
  def show
    @lieu = Lieu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lieu }
    end
  end

  # GET /lieus/new
  # GET /lieus/new.xml
  def new
    @lieu = Lieu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lieu }
    end
  end

  # GET /lieus/1/edit
  def edit
    @lieu = Lieu.find(params[:id])
  end

  # POST /lieus
  # POST /lieus.xml
  def create
    @lieu = Lieu.new(params[:lieu])

    respond_to do |format|
      if @lieu.save
        format.html { redirect_to(@lieu, :notice => 'Lieu was successfully created.') }
        format.xml  { render :xml => @lieu, :status => :created, :location => @lieu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lieu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lieus/1
  # PUT /lieus/1.xml
  def update
    @lieu = Lieu.find(params[:id])

    respond_to do |format|
      if @lieu.update_attributes(params[:lieu])
        format.html { redirect_to(@lieu, :notice => 'Lieu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lieu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lieus/1
  # DELETE /lieus/1.xml
  def destroy
    @lieu = Lieu.find(params[:id])
    @lieu.destroy

    respond_to do |format|
      format.html { redirect_to(lieus_url) }
      format.xml  { head :ok }
    end
  end
end
