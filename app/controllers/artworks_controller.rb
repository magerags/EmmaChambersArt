class ArtworksController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
      @artworks = Artwork.all
    end

    def show
      @artwork = Artwork.find(params[:id])
    end

    def new
      @artwork = Artwork.new
    end

    def create
      @artwork = Artwork.new(artwork_params)

      if @artwork.save
        redirect_to artworks_path
      else
        render :new
      end
    end

    def destroy
      @artwork.destroy
      redirect_to artworks_path
    end

    private

    def artwork_params
      params.require(:artwork).permit(:name, :description, :type, :size, :collection_id, :photo)
    end
end
