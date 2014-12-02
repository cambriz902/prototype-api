class ChampionCountersController < ApplicationController

	def index
		@champion_counters = ChampionCounter.all
		respond_to do |format|
			format.html
			format.json { render json: @champions}
		end
	end

	def show
	end

	def new
		#will have template
		@champion_counters = ChampionCounter.new
	end

	def create
		#will save and redirect
		@champion_counters = ChampionCounter.new(allowed_params)

		if @champion_counters.save
			redirect_to champion_counters_path
		else
			render 'new'
		end
	end

	def edit 
		#will have template
		@champion_counters = ChampionCounter.find(params[:id])
	end

	def update
		#will save and redirect
		@champion_counters = ChampionCounter.find(params[:id])

		if @champion_counters.update_attributes(allowed_params)
			redirect_to champion_counters_path
		else
			render 'new'
		end
	end

	def destroy
		#will destroy and redirect
		@champion_counters = ChampionCounter.find(params[:id])
		@champion_counters.destroy

		redirect_to champion_counters_path
	end 

	private
		def allowed_params
			params.require(:champion_counter).permit([:name, :strongOne, :strongTwo, :strongThree, :strongFour, :strongFive,
																								:weakOne, :weakTwo, :weakThree, :weakFour, :weakFive])
		end

end
