class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
    render 'index.json.jb'
  end

end
