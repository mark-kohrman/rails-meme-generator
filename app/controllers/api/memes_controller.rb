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
    
    puts params
    @meme = Meme.create(
      top_text: params[:top_text],
      bottom_text: params[:bottom_text],
      img_url: params[:img_url]
    )
    render 'show.json.jb'
  end

  def update
    @meme = Meme.find_by(id: params[:id])

    @meme.update(
      top_text: params[:top_text] || @meme.top_text,
      bottom_text: params[:bottom_text] || @meme.bottom_text,
      img_url: params[:img_url] || @meme.img_url
    )
    render 'show.json.jb'
  end

  def destroy
    @meme = Meme.find_by(id: params[:id])
    @meme.destroy

    render json: {message: "The meme has been sucessfully destroyed."}


  end
  
end
