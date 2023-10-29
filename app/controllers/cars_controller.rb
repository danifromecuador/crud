class CarsController < ApplicationController
  def index
    @cars = Car.all
    pp @cars
  end

  def show
    @car = Car.find(params[:id])
    pp @car
  end
end
