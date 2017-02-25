class Doctor < ActiveRecord::Base
    belongs_to :organization
    has_many :appointmentsw
end
