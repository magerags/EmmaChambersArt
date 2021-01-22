class ArtworksController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :set_artwork, only: [:show, :edit, :update, :destroy]
    
    def index
      @artworks = Artwork.all
    end

    def show
    end

    def new
      @artwork = Artwork.new
    end

    def edit
    end 

    def update
      @artwork.update(artwork_params)
      redirect_to artworks_path
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
      params.require(:artwork).permit(:name, :description, :medium, :size, :collection_id, :photo)
    end

    def set_artwork
      @artwork = Artwork.find(params[:id])
    end
end
