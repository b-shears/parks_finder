class Park 
    attr_reader :name, :description, :direction_info, :open_hours
    def initialize(park_data)
        @name = park_data[:fullName]
        @description = park_data[:description]
        @direction_info = park_data[:directionsInfo]
        @open_hours = park_data[:operatingHours].first[:standardHours]
    end 
end 