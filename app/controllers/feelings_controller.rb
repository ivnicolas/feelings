class FeelingsController < ApplicationController
    def index 
        @feelings = Feeling.all 
        # binding.pry
        @feelings.sort_by{|feeling| feeling.name}
    end 

    def show
        @feeling = Feeling.find_by_id(params[:id])
    end 

    def sort 
        @feelings = Feeling.all.sort_by{|feeling| feeling.name} 
        render :index
    end 

end
