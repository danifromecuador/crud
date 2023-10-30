class CarsController < ApplicationController
  def index
    @cars = Car.all
    # pp @cars
  end

  def show
    @car = Car.find_by(id: params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      pp @car.errors
      render 'new'
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to car_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    pp @car
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :year, :color)
  end
end
