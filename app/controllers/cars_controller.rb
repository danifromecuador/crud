class CarsController < ApplicationController
  def index
    @cars = Car.all
    pp @cars
  end
end
