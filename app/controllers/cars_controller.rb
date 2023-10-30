class CarsController < ApplicationController
  def index
    @cars = Car.all
    pp @cars
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

  private

  def car_params
    params.require(:car).permit(:model, :year, :color)
  end
end
