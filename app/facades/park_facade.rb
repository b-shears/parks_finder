class ParkFacade 
    def self.park_finder_by_state(state)
        parks = ParksService.find_parks_by_state(state)
        parks[:data].map do |data| 
            Park.new(data)
        end 
    end 
end 