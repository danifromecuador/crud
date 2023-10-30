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
end
