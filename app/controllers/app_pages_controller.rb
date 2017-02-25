class AppPagesController < ApplicationController
  def signin
  end
  
  def filter
    @organizations = Organization.all
    @doctors = Doctor.all
    @doctor = Doctor.find(1)
    @appointments = Appointment.all
  end

  def book
    @organizations = Organization.all
    @doctors = Doctor.all
    @appointments = Appointment.all
  end
end
