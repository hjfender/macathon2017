class Appointment < ActiveRecord::Base
    belongs_to :doctor
    
    scope :medicare, -> { where(doctor.organization.takes_medicare :true) }
    scope :slider, -> { where(doctor.organization.sliding_scale :true) }
    scope :specialty, -> { where(doctor.specialty :specialty) }
    scope :distance, (distance) -> { where(doctor.organization.distance < distance) }
end
