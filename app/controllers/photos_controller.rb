class PhotosController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
      @photos = Photo.all
    end

    def show
    end

    def new
      @photo = Photo.new
    end

    def create
      @photo = Photo.new(photo_params)

      if @photo.save
        redirect_to photos_path
      else
        render :new
      end
    end

    def destroy
      @photo.destroy
      redirect_to photos_path
    end

    private

    def photo_params
      params.require(:photo).permit(:name)
    end
end
