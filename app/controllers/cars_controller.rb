class CarsController < ApplicationController
  def index
    @cars = Car.all
    pp @cars
  end

  def show
    @car = Car.find(params[:id])
    pp @car
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :color)
  end
end
