class Api
   def self.get_data
    response = RestClient.get("https://www.officeapi.dev/api/quotes/")
    data = JSON.parse(response.body)
    binding.pry
   end

   
end