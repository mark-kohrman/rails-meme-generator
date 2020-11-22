class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
    render 'index.json.jb'
  end

  def show
    @meme = Meme.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @meme = Meme.create(
      top_text: params[:top_text],
      bottom_text: params[:bottom_text],
      img_url: params[:img_url]
    )
    render 'show.json.jb'
  end

end
