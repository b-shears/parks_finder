class ParksService 
   def self.find_parks_by_state(state)
    response = Faraday.get("https://developer.nps.gov/api/v1/parks?") do |faraday|
      faraday.params[:stateCode] = "#{state}"
      faraday.params[:api_key] = "#{ENV['parks_api_key']}"
    end
    parse = JSON.parse(response.body, symbolize_names: true)
  end



#     def self.conn 
#         Faraday.new("https://developer.nps.gov/api/v1") do |faraday|
#             faraday.params["api_key"] = ENV['parks_api_key']
#             faraday.params[:states]
#         end 
#     end 

#     def self.find_parks
#         response = conn.get("/parks?api_key=#{ENV['parks_api_key']}")
#         json = JSON.parse(response.body, symbolize_names: true)
#     end 
 end 