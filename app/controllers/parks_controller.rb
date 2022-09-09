class ParksController < ApplicationController 
    def index 
        @parks = ParkFacade.park_finder_by_state(params[:state])
    end 
end 