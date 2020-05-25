class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def details
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    id = params[:id]
    array_de_flats = JSON.parse(open(url).read)
    @flat = array_de_flats.find { |flat| flat["id"] == id.to_i }
  end
end
