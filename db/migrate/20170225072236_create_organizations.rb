class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.boolean :takes_medicare
      t.string :location
      t.boolean :sliding_scale

      t.timestamps null: false
    end
  end
end
