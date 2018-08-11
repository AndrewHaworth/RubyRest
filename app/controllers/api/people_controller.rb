module Api
	class PeopleController < ApplicationController
		before_action :set_person, only: [:show, :update, :destroy]

def index
	people = Person.all
	render json: {status: 'SUCCESS', message:'Loaded people', data:people},status: :ok
end
		
def show
	person = Person.find(params[:id])
		render json: {status: 'SUCCESS', message:'Loaded person', data:person},status: :ok
	end

	def create
		person = Person.new(person_params)
			
		if person.save
			render json: {status: 'SUCESS', message:'Saved person', data:person},status: :ok
		else
			render json: {status: 'ERROR', message:'Person not saved', data:person.errors},status: :unprocessable_entity
		end
	end

	def destroy
		person = Person.find(params[:id])
		person.destroy
		render json: {status: 'SUCCESS', message:'Deleted person', data:person},status: :ok
	end

	def update
		person = Person.find(params[:id])
		if person.update_attributes(person_params)
			render json: {status: 'SUCCESS', message:'Updated person', data:person},status: :ok
		else
			render json: {status: 'ERROR', message:'Person not updated', data:person.errors},status: :unprocessable_entity
		end
	end

	private
	def set_person
		@person = Person.find(params[:id])
	end

	def person_params
		params.require(:person).permit(:title, :forename, :surname, :email, :date_of_birth, :telephone, :street, :city, :county, :postcode, :license_type, :license_period, :occupation)
	end
	end
end
