class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    json_response(@bookings)
  end

  # POST /bookings
  def create
    @booking = Booking.create!(booking_params)
    json_response(@booking, :created)
  end

  # GET /bookings/:id
  def show
    json_response(@booking)
  end

  # PUT /bookings/:id
  def update
    @booking.update(booking_params)
    head :no_content
  end

  # DELETE /bookings/:id
  def destroy
    @booking.destroy
    head :no_content
  end

  private

  def booking_params
    # whitelist params
    params.permit(:car_id, :booking_id, :image_link)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
