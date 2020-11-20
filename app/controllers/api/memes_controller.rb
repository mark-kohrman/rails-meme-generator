class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
    render 'index.json.jb'
  end

  def show
    @meme = Meme.find_by(id: params[:id])
    render 'show.json.jb'
  end

end
