class AppPagesController < ApplicationController
  def signin
    @doctors = Doctor.all
  end
  
  def filter
    @organizations = Organization.all
    @doctors = Doctor.all
    @appointments = Appointment.all
  end

  def book
  end
end
