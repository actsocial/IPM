class QueryController < ApplicationController

  def index
    @brands = Brand.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def query
    respond_to do |format|
      format.json { render json: {:aaData =>Product.where(params.delete("_")).all} }
    end
  end
  
  def detail
    @detail = ProductDetail.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end