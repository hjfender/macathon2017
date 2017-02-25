class Organization < ActiveRecord::Base
    has_many :doctors
    
    def distance
        return 10
    end
end
