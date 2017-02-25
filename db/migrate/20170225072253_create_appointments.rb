class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :start_time
      t.date :date
      t.integer :length
      t.boolean :open
      t.date :patient_birthdate
      t.string :patient_name
      t.references :doctor

      t.timestamps null: false
    end
  end
end
