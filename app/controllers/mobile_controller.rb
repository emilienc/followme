class MobileController < ApplicationController
  
  def mail
    
  end
  
  
  def check
    @code = params[:code]
    @lieus = Balise.find_by_code(@code).lieus
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lieus }
    end
  end
  
  
  def activate
    @balise=Balise.new
    @balise.save!
    respond_to do |format|
      format.xml { render :xml => @balise }
    end
  end

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

  

end
