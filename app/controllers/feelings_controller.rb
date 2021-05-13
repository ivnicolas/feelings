class FeelingsController < ApplicationController
    def index 
        @feelings = Feeling.all 
    end 

    def show
        @feeling = Feeling.find_by_id(params[:id])
    end 

end
