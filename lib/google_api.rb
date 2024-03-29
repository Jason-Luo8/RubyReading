class GoogleApi
BASE_URL = "https://www.googleapis.com/books/v1/volumes?"
API_KEY = ENV["YOUR_GOOGLE_API_KEY"]    

def query
    request = Faraday.get(BASE_URL + @search_format + API_KEY)
    JSON.parse(request.body)
end

def initialize(user_search_input)
    @search_format = "q=#{user_search_input.gsub(" ", "%20")}&"
end

end