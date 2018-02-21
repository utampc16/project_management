class TechnologiesController < ApplicationController
	def index
		@technology = Technology.all
	end

	def new
		@technology = Technology.new
	end

	def create
		@technology = Technology.new(technoology_params)
		@technology.save
		redirect_to technologies_path
	end

	
    private
	  def technoology_params
	  	params.require(:technology).permit(:technology_name)
	  end
end
