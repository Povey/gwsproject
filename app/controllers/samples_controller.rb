class SamplesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def new
    @page_title = 'Add New Sample'
    @sample = Sample.new
    @category = Category.new
  end


  def create
    @sample = Sample.new(sample_params)
    @sample.save
    flash[:notice] = 'Sample Added'
    redirect_to samples_path
  end


  def update
    @sample = Sample.find(params[:id])
    @sample.update(sample_params)

    flash[:notice] = 'Sample Updated'
    redirect_to samples_path
  end

  def edit
    @sample = Sample.find(params[:id])

  end

  def destroy
    @sample = Sample.find(params[:id])
    @sample.destroy

    flash[:notice] = 'Sample Removed'
    redirect_to samples_path
  end

  def index
    @samples = Sample.all
    @categories = Category.all
  end

  def show
    @sample = Sample.find(params[:id])
    @categories = Category.all
  end

  private
  def sample_params
  params.require(:sample).permit(:sample_name, :category_id, :image)
  end
end
