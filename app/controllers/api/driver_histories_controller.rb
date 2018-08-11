module Api
class DriverHistoriesController < ApplicationController
  before_action :set_driver_history, only: [:show, :update, :destroy]

  # GET /driver_histories
  def index
    driver_histories = DriverHistory.all 
	    render json: {status: 'SUCCESS', message:'Loaded driver histories', data:driver_histories},status: :ok
  end

  # GET /driver_histories/1
  def show
	  driver_history = DriverHistory.find(params[:id])
	    render json: {status: 'SUCCESS', message:'Loaded driver history', data:driver_history},status: :ok
  end

  # POST /driver_histories
  def create
    driver_history = DriverHistory.new(driver_history_params)

    if driver_history.save
	    render json: {status: 'SUCCESS', message:'Created driver history', data:driver_history},status: :ok
    else
	    render json: {status: 'ERROR', message:'Failed to create driver history', data:driver_history.errors},status: :unprocessable_entity
    end
  end

  # PATCH/PUT /driver_histories/1
  def update
	  driver_history = DriverHistory.find(params[:id])
    if @driver_history.update(driver_history_params)
	    render json: {status: 'SUCCESS', message:'Updated driver history', data:driver_history},status: :ok
    else
	    render json: {status: 'ERROR', message:'Failed to update driver history', data:driver_history.errors},status: :unprocessable_entity
    end
  end

  # DELETE /driver_histories/1
  def destroy 
	  driver_history = DriverHistory.find(params[:id])
	  driver_history.destroy
	    render json: {status: 'SUCCESS', message:'Deleted driver history', data:driver_history},status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_history
      driver_history = DriverHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def driver_history_params
      params.require(:driver_history).permit(:date_of_incident, :value, :incident_type, :description)
    end
end
end
