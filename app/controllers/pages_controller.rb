class PagesController < ApplicationController
  layout :choose_layout

  def landing; end

  def albums
    @albums = Album.all
  end

  def photos
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

  private

  def choose_layout
    return "portfolio" if action_name == "landing"
    "admin"
  end
end
