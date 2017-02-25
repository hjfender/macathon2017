require 'net/http'

class Organization < ActiveRecord::Base
    has_many :doctors
    
    def distance
        uri = URI('https://maps.googleapis.com/maps/api/distancematrix/json?')
        params = { :units => 'imperial', :origins => 'Saint Paul,MN', 
            :destinations => self.location, :key => 'AIzaSyCBlFJqtx98D529iTq02GPysUraNGsPTBM'}
        uri.query = URI.encode_www_form(params)
        
        res = Net::HTTP.get_response(uri)
        data = JSON.parse res.body
        return data.rows.elements.distance.value
    end
end
