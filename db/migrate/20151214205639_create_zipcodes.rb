class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :zipcode
      t.string :place

      t.timestamps null: false
    end
  end
end
