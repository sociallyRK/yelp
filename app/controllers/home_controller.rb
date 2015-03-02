class HomeController < ApplicationController
  def index
  end

  def search
    parameters = { term: params[:term], limit: 20}
    render json: Yelp.client.search('San Francisco', parameters)
  end
end
