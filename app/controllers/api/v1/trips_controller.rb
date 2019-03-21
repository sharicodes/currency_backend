class Api::V1::TripsController < ApplicationController
  
  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
    trip = Trip.create(trip_param)
    render json: trip
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip_params
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      render json: @trip, status: :accepted
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    head :no_content, status: :ok
  end

  private

  def trip_params
    params.permit(:trip_name,:currency_one, :currency_two, :currency_three)
  end
  def find_trip
   @trip = Trip.find(params[:id])
 end
end
