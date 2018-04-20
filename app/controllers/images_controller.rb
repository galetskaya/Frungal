class ImagesController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(image_params)
    @image.save!
    # redirect_to albums_path
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
    @image = image.find(params[:id])
    @image.destroy
    # redirect_to albums_path
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :image)
  end
end
