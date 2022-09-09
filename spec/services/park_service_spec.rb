require 'rails_helper'

RSpec.describe 'ParksService', :vcr do 
    it 'returns attributes of a park' do 

        park = ParksService.find_parks_by_state('TN')

        expect(park).to be_a(Hash)
       
        expect(park[:data]).to be_an(Array)

        park_data = park[:data]

        park_data.each do |data|
            expect(data).to have_key(:fullName)
            expect(data[:fullName]).to be_a(String)

            expect(data).to have_key(:description)
            expect(data[:description]).to be_a(String)

            expect(data).to have_key(:directionsInfo)
            expect(data[:directionsInfo]).to be_a(String)
            
            binding.pry
            expect(data[:operatingHours].first).to have_key(:standardHours)
            expect(data[:operatingHours].first[:standardHours]).to be_a(Hash)
        end 
    end  
end 