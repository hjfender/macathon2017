class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :gender
      t.string :specialty
      t.references :organization

      t.timestamps null: false
    end
  end
end
