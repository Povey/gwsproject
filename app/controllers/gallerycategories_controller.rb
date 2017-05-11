class GallerycategoriesController < ApplicationController

  def new
    @page_title = 'Add New Gallerycategory'
    @gallerycategory = Gallerycategory.new
  end

  def create
    @gallerycategory = Gallerycategory.new(gallerycategory_params)
    if @gallerycategory.save
      flash[:notice] = "Gallerycategory Created"
      redirect_to gallerycategories_path
    else render 'new'
    end
  end

  def update
    @gallerycategory = Gallerycategory.find(params[:id])
    @gallerycategory.update(gallerycategory_params)
    flash[:notice] = 'Gallerycategory Updated'
    redirect_to gallerycategories_path
  end

  def edit
    @gallerycategory = Gallerycategory.find(params[:id])

  end


  def destroy
    @gallerycategory = Gallerycategory.find(params[:id])
    @gallerycategory.destroy

    flash[:notice] = 'Gallerycategory Removed'
    redirect_to gallerycategories_path
  end

  def index
      @gallerycategories = Gallerycategory.all
  end

  def show
    @gallerycategory = Gallerycategory.find(params[:id])
    @gallerycategories = Gallerycategory.all
    @images = @gallerycategory.images
  end

  private
  def gallerycategory_params
  params.require(:gallerycategory).permit(:name)
  end
end
