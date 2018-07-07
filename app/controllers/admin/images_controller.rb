class Admin::ImagesController < Admin::BaseController
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
    if @image.save
      redirect_to admin_album_images_path(@album)
    else
      flash[:error] = @image.errors.full_messages
      render :new
    end
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
    redirect_to admin_album_images_path(@album)
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :image)
  end
end
