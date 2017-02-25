json.extract! appointment, :id, :start_time, :date, :length, :open, :patient_birthdate, :patient_name, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)