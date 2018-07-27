class Admin::AlbumsController < Admin::BaseController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
    @album  = Album.find(params[:id])
    @photos = @album.photos
  end

  def create
    @album = Album.create(album_params)
    if @album.save
      redirect_to admin_albums_path
    else
      flash[:error] = @album.errors.full_messages
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

   def update
    @album = Album.find(params[:id])
    @album.update_attributes(album_params)
    redirect_to admin_albums_path
  end

  def destroy
    @album = Album.find(params[:id])

    if @album.destroy
      @album.cover.purge if @album.cover
    else
      flash[:error] = @album.errors.full_messages
    end

    redirect_to admin_albums_path
  end

  def purge_photo
    album = Album.find(params[:album_id])
    photo = album.photos.find_by(blob_id: params[:blob_id])
    photo.purge if photo
    redirect_to admin_album_path(album)
  end

  private

  def album_params
    params.require(:album).permit(:name, :description, :cover, photos: [])
  end
end
