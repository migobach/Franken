class PartsController < ApplicationController
  def index
    @parts = Part.all
  end

  def show
    @part = Part.find(params[:id])
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(parts_params)
    if @part.save
      redirect_to parts_path
    else
      render :new
    end
  end

  def edit
    @part = Part.find(params[:id])
  end

  def update
    @part = Part.find(params[:id])
    if @part.update(parts_params)
      redirect_to parts_path
    else
      render :edit
    end 
  end

  def destroy
    Part.find(params[:id]).destroy
    redirect_to parts_path
  end

private 

  def parts_params
    params.require(:part).permit(:name, :description, :price, :available)
  end
end
