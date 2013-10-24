class AnalyticsController < ApplicationController

  def index
    @brands = Brand.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end