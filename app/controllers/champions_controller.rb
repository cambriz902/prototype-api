class ChampionsController < ApplicationController

	#display full list
	def index
		#will have template
		@champions = Champion.all
		respond_to do |format|
			format.html
			format.json { render json: @champions}
		end
	end

	#display an individual record
	def show
		#will have template
	end

	#display the form for new record
	def new
		#will have template
		@champion = Champion.new
	end

	#save the new record
	def create
		#will save and redirect
		@champion = Champion.new(allowed_params)

		if @champion.save
			redirect_to champions_path
		else
			render 'new'
		end
	end

	#display form for the existing record
	def edit 
		#will have template
		@champion = Champion.find(params[:id])
	end

	#save changes
	def update
		#will save and redirect
		@champion = Champion.find(params[:id])

		if @champion.update_attributes(allowed_params)
			redirect_to champions_path
		else
			render 'new'
		end
	end

	#delete record
	def destroy
		#will destroy and redirect
		@champion = Champion.find(params[:id])
		@champion.destroy

		redirect_to champions_path
	end

	private
			def allowed_params
				params.require(:champion).permit(:name) 
			end


end
