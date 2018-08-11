module Api
	class VehiclesController < ApplicationController
 
		before_action :set_vehicle, only: [:show, :update, :destroy]

  # GET /vehicles
  def index
    vehicles = Vehicle.all
    render json: {status: 'SUCCESS', message:'Loaded vehicles', data:vehicles},status: :ok
  end

  # GET /vehicles/1
  def show
	  vehicle = Vehicle.find(params[:id])
	  render json: {status: 'SUCCESS', message:'Loaded vehicle', data:vehicle},status: :ok
  end

  # POST /vehicles
  def create
    vehicle = Vehicle.new(vehicle_params)

    if vehicle.save
	    render json: {status: 'SUCCESS', message:'Saved vehicle', data:vehicle},status: :ok
    else  
	    render json: {status: 'ERROR', message:'Did not save vehicle', data:vehicle.errors},status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicles/1
  def update
	  person = Person.find(params[:id])
    if vehicle.update(vehicle_params)
	    render json: {status: 'SUCCESS', message:'Updated vehicle', data:vehicle},status: :ok
    else
	    render json: {status: 'ERROR', message:'Did not update vehicle', data:vehicle.errors},status: :unprocessable_entity
    end
  end

  # DELETE /vehicles/1
  def destroy
	  vehicle = Vehicle.find(params[:id])
	  vehicle.destroy
	  render json: {status: 'SUCCESS', message:'Deleted vehicle', data:vehicle},status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_params
      params.require(:vehicle).permit(:registration, :mileage, :value, :parking_location, :policy_start)
    end
	end
end
