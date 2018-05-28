class PaintsController < ApplicationController
  def index
    @paints = Paint.all
  end

  def show
    @paint = Paint.find(params[:id])
  end

  def new
    @paint = Paint.new
  end

  def create
    @paint = Paint.new(paints_params)
    if @paint.save 
      redirect_to paints_path
    else
      render :new
    end
  end

  def edit
    @paint = Paint.find(params[:id])
  end

  def update
    @paint = Paint.find(params[:id])
    if @paint.update(paints_params)
      redirect_to paint_path
    else
      render :edit
    end
  end

  def destroy
    Paint.find(params[:id]).destroy
    redirect_to paints_path
  end

  private

  def paints_params
    params.require(:paint).permit(:name, :finish, :price, :available)
  end
end
