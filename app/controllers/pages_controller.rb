class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @artworks = Artwork.where(featured: "true")
  end
end
