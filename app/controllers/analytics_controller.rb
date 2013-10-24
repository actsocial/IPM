class AnalyticsController < ApplicationController

  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def solved
    @products = Product.where(:action=>"solved").all
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
  
  def calculation
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
  
  
  def seller
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
  
  def closed
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
  
  def location
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
  
  def prevent
    respond_to do |format|
      format.html {render :layout=>false}
    end
  end
end