class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end

  def new
    @bear = Bear.new
  end

  def create
    @bear = Bear.new(bear_params)
    if @bear.save
      flash[:success] = "SUCESS! Bear created!"
      redirect_to bear_path(@bear.id)
    else
      flash[:error] = "ERROR: BEAR COULDN'T BE CREATED!"
      render :new
    end
  end

  def show
    @bear = Bear.find(params[:id])
  end

  def edit
    @bear = Bear.find(params[:id])
  end

  def update
    @bear = Bear.find(params[:id])
    if @bear.update(bear_params)
      flash[:success] = "Bear updated!"
      redirect_to bear_path(@bear.id)
    else
      flash[:error].now = "ERROR: BEAR COULDN'T BE UPDATED!"
      render :edit
    end
  end

  def destroy
    @bear = Bear.find(params[:id])
    if @bear.destroy
      flash[:success] = "Bear Deleted!"
      redirect_to bears_path
    else
      flash[:error] = "ERROR: BEAR COULDN'T BE DESTROYED!"
      redirect_to :index
    end
  end

  private

  def bear_params
    params.require(:bear).permit(:name, :description, :width, :height)
  end
end
