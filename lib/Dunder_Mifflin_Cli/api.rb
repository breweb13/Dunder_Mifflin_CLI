class Api


   def self.get_data
    response = RestClient.get("https://www.officeapi.dev/api/quotes/")
    data = JSON.parse(response.body)
    binding.pry
    data.each do |data|
      Quote.new(data)
      end
   end
end