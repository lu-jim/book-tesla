class CarsController < ApplicationController
  before_action :set_car, only: %i[show update destroy]

  # GET /cars
  def index
    @cars = Car.all
    json_response(@cars)
  end

  # POST /cars
  def create
    @car = Car.create!(car_params)
    json_response(@car, :created)
  end

  # GET /cars/:id
  def show
    json_response(@car)
  end

  # PUT /cars/:id
  def update
    @car.update(car_params)
    head :no_content
  end

  # DELETE /cars/:id
  def destroy
    @car.destroy
    head :no_content
  end

  private

  def car_params
    # whitelist params
    params.permit(:model, :city, :image_link)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
