class CreateTables < ActiveRecord::Migration[5.2]
  def change
  	create_table :doctors do |t|
  		t.string :first_name
      t.string :last_name
      t.integer :postal_code
      t.belongs_to :speciality, index: true
      t.belongs_to :city, index: true
      t.timestamps
    end
 
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city, index: true
      t.timestamps
    end
 
    create_table :appoitments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :city, index: true
      t.datetime :appoitment_date
      t.timestamps
    end

    create_table :specialities do |t|
      t.string :speciality_name
    end

    create_table :cities do |t|
      t.string :city_name
    end
  end
end
