class ImagesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @page_title = 'Add New Image'
    @image = Image.new
  end


  def create
    @image = Image.new(image_params)
    @image.save
    flash[:notice] = 'Image Added'
    redirect_to images_path
  end


  def update
    @image = Image.find(params[:id])
    @image.update(image_params)

    flash[:notice] = 'Image Updated'
    redirect_to images_path
  end

  def edit
    @image = Image.find(params[:id])

  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    flash[:notice] = 'Image Removed'
    redirect_to images_path
  end

  def index
    @images = Image.all
    @category = Category.all
  end

  def show
    @image = Image.find(params[:id])
    @categories = Category.all

  end

  private
  def image_params
  params.require(:image).permit(:image_name, :category_id, :attachment)
  end
end
