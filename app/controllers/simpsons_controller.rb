class SimpsonsController < ApplicationController
	include SimpsonsHelper


	def index
		@char = Simpson.all
	end

	def new
		@char = Simpson.new
	end

	def edit
		@char = Simpson.find(params[:id])
	end

	def update
		@char = Simpson.find(params[:id])
		@char.update(char_params)
		redirect_to simpsons_path
	end

	def create
		@char = Simpson.new(char_params)
		@char.save

		redirect_to simpsons_path
	end

	def destroy
		@char = Simpson.find(params[:id])
		@char.destroy
		redirect_to simpsons_path

	end
end
