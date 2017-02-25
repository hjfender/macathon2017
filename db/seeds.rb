# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Organization.create(name: 'Health Partners Midway', takes_medicare: true, location: '451 Dunlap St, St Paul, MN 55104', sliding_scale: true)
Organization.create(name: 'Community University Health Care Clinic', takes_medicare: true, location: '2001 Bloomington Ave, Minneapolis, MN 55404', sliding_scale: false)
Organization.create(name: 'NorthPoint Minneapolis', takes_medicare: true, location: '1313 Penn Ave N, Minneapolis, MN 55411', sliding_scale: false)

Doctor.create(name: 'Doctor Redlin', gender: 'M', specialty: 'Dermatology', organization_id: 1)
Doctor.create(name: 'Doctor Hymoff', gender: 'M', specialty: 'Gynecology', organization_id: 1)
Doctor.create(name: 'Doctor Haddad', gender: 'F', specialty: 'Pediatric', organization_id: 2)
Doctor.create(name: 'Doctor Alnaas', gender: 'M', specialty: 'Phlebotomy', organization_id: 1)
Doctor.create(name: 'Doctor Ibaid', gender: 'M', specialty: 'Urology', organization_id: 2)
Doctor.create(name: 'Doctor Bansal', gender: 'M', specialty: 'Dentistry', organization_id: 2)
Doctor.create(name: 'Doctor Wadhwa', gender: 'F', specialty: 'Neurosurgeon', organization_id: 1)
Doctor.create(name: 'Doctor Maidl', gender: 'F', specialty: 'Chiropractor', organization_id: 3)
Doctor.create(name: 'Doctor Nguyen', gender: 'M', specialty: 'Optometry', organization_id: 1)
Doctor.create(name: 'Doctor Stromsta', gender: 'F', specialty: 'Orthopedics', organization_id: 2)
Doctor.create(name: 'Doctor Mingkwan', gender: 'F', specialty: 'Cardiology', organization_id: 3)
Doctor.create(name: 'Doctor Gupta', gender: 'F', specialty: 'Psychology', organization_id: 3)
Doctor.create(name: 'Doctor Fender', gender: 'M', specialty: 'Homeopath', organization_id: 3)
Doctor.create(name: 'Doctor Gerdes', gender: 'F', specialty: 'Pathology', organization_id: 3)

Appointment.create(start_time: 8, date: Date.new(2017, 2, 28), length: 1, open: true, doctor_id: 1)
Appointment.create(start_time: 9, date: Date.new(2017, 2, 27), length: 1, open: true, doctor_id: 1)
Appointment.create(start_time: 10, date: Date.new(2017, 3, 3), length: 1, open: true, doctor_id: 2)
Appointment.create(start_time: 8, date: Date.new(2017, 3, 1), length: 1, open: true, doctor_id: 2)
Appointment.create(start_time: 9, date: Date.new(2017, 3, 2), length: 1, open: true, doctor_id: 3)
Appointment.create(start_time: 10, date: Date.new(2017, 3, 3), length: 1, open: true, doctor_id: 3)
Appointment.create(start_time: 11, date: Date.new(2017, 2, 27), length: 1, open: true, doctor_id: 3)
Appointment.create(start_time: 13, date: Date.new(2017, 2, 28), length: 1, open: true, doctor_id: 4)
Appointment.create(start_time: 12, date: Date.new(2017, 3, 5), length: 1, open: true, doctor_id: 4)
Appointment.create(start_time: 14, date: Date.new(2017, 3, 9), length: 1, open: true, doctor_id: 13)

Appointment.create(start_time: 15, date: Date.new(2017, 3, 9), length: 1, open: true, doctor_id: 5)
Appointment.create(start_time: 8, date: Date.new(2017, 2, 28), length: 1, open: true, doctor_id: 5)
Appointment.create(start_time: 15, date: Date.new(2017, 2, 27), length: 1, open: true, doctor_id: 14)
Appointment.create(start_time: 12, date: Date.new(2017, 3, 2), length: 1, open: true, doctor_id: 6)
Appointment.create(start_time: 9, date: Date.new(2017, 2, 28), length: 1, open: true, doctor_id: 6)
Appointment.create(start_time: 11, date: Date.new(2017, 3, 2), length: 1, open: true, doctor_id: 7)
Appointment.create(start_time: 8, date: Date.new(2017, 3, 4), length: 1, open: true, doctor_id: 8)
Appointment.create(start_time: 7, date: Date.new(2017, 3, 1), length: 1, open: true, doctor_id: 9)
Appointment.create(start_time: 11, date: Date.new(2017, 2, 28), length: 1, open: true, doctor_id: 10)
Appointment.create(start_time: 16, date: Date.new(2017, 2, 27), length: 1, open: true, doctor_id: 11)

Appointment.create(start_time: 10, date: Date.new(2017, 3, 5), length: 1, open: true, doctor_id: 12)