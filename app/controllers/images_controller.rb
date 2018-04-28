class ImagesController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @images = @album.images
  end

  def new
    @album = Album.find(params[:album_id])
    @image = Image.new
  end

  def create
    @album = Album.find(params[:album_id])
    @image = Image.create(image_params)
    @image.album_id = @album.id
    @image.save!
    redirect_to album_images_path(@album)
  end

  def edit
    @image = image.find(params[:id])
  end

   def update
    @image = Image.find(params[:id])
    @image.update_attributes(image_params)
    # redirect_to albums_path
  end

  def destroy
    @album = Album.find(params[:album_id])
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to album_images_path(@album)
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :image)
  end
end
