# -*- coding: utf-8 -*-
class QueryController < ApplicationController

  def index
    @brands = Brand.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def query
    ps = Product.where(params.delete("_")).all
    respond_to do |format|
      format.json { render json: {:aaData =>ps} }
    end
  end
  
  def detail
    @detail = ProductDetail.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end