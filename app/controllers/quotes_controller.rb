class QuotesController < ApplicationController
	before_action :set_quote, only: [:show, :edit, :update, :destroy]

	# GET /quotes
	# GET /quotes.json
	def index
		@quotes = Quote.all
	end

	# GET /quotes/1
	# GET /quotes/1.json
	def show
	end

	# GET /quotes/new
	def new
		@quote = Quote.new
		@quote.build_vehicle
		@quote.build_person
		@quote.build_driver_history
	end

	# GET /quotes/1/edit
	def edit
	end

	# POST /quotes
	# Create has been updated to fit with my 2 webpage design, where all the models are created on 1 page, and showing the quote created once the details have been entered. This passes parameters entered on the page into the quote's update function. Weird side effect, instead of adding the numbers, it concatenates the numbers. Ruby is strange.
	def create
		@quote = Quote.new(quote_params)
		@quote.update((quote_params[:vehicle_attributes][:value])+(quote_params[:driver_history_attributes][:value])+(quote_params[:vehicle_attributes][:mileage]))
		respond_to do |format|
			if @quote.save
				format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
			else
				format.html { render :new }
				format.json { render json: @quote.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /quotes/1
	# PATCH/PUT /quotes/1.json
	def update
		respond_to do |format|
			if @quote.update(quote_params)
				format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
				format.json { render :show, status: :ok, location: @quote }
			else
				format.html { render :edit }
				format.json { render json: @quote.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /quotes/1
	# DELETE /quotes/1.json
	def destroy
		@quote.destroy
		respond_to do |format|
			format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_quote
		@quote = Quote.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def quote_params
		params.require(:quote).permit(:date_created, :premium, vehicle_attributes:[:registration, :value, :parking_location, :mileage, :policy_start], driver_history_attributes:[:date_of_incident, :value, :description, :incident_type], person_attributes:[:title, :forename, :surname, :email, :license_period, :telephone, :date_of_birth, :license_type, :street, :city, :county, :postcode, :occupation])
	end
end
