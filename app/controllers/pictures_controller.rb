class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "投稿でけた👍"
    else
      render :new
    end
  end

  def confirm
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :image_cache)
  end

  def set_picture
    
  end
end
