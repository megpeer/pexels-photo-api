require "pexels"
require "figaro"
class StaticPagesController < ApplicationController
  def index
    client = Pexels::Client.new(ENV["pexels_api_key"])

    if params[:collection_id].present?
      collection_id = params[:collection_id]
      @photos = client.collections[collection_id, type: "photos"].media
    end
  end
end
