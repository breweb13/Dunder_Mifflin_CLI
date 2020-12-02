class Api

   def self.get_data
    response = RestClient.get("https://www.officeapi.dev/api/quotes/")
    info = JSON.parse(response.body)
    array = info["data"]
    array.each do |data_info|
      data_info["content"]
      data_info ["character"]["firstname"] + " " + data_info ["character"]["lastname"]
      Quote.new(data_info["content"], data_info["character"]["firstname"] + " " + data_info["character"]["lastname"] )
    end
    #binding.pry

 
   end
  
end