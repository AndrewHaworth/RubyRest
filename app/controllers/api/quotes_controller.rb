module Api
class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :update, :destroy]

  # GET /quotes
  def index
    quotes = Quote.all

    render json: {status: 'SUCCESS', message:'Loaded quotes', data:quotes},status: :ok
  end

  # GET /quotes/1
  def show
	  quote = Quote.find(params[:id])
    render json: {status: 'SUCCESS', message:'Loaded quote', data:quote},status: :ok
  end

  # POST /quotes
  def create
    quote = Quote.new(quote_params) 
    if quote.save  
    render json: {istatus: 'SUCCESS', message:'Saved quote', data:quote},status: :ok
    else  
	    render json: {status: 'ERROR', message:'Did nto save quote', data:quote.errors},status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  def update
	  quote = Quote.find(params[:id])
    if quote.update(quote_params)  
    render json: {status: 'SUCCESS', message:'Updated quote', data:quote},status: :ok
    else 
	    render json: {status: 'ERROR', message:'Did not update quote', data:quote.errors},status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  def destroy
	  quote = Quote.find(params[:id])
    quote.destroy
    render json: {status: 'SUCCESS', message:'Deleted quote', data:quote},status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quote_params
      params.require(:quote).permit(:premium, :date_created, :vehicle_id, :driver_history, :person)
    end
end
end
