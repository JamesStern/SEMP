class CreateAppforms < ActiveRecord::Migration
  def change
    create_table :appforms do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :email
      t.integer :age
      t.string :gender
      t.boolean :citizen
      t.string :emergency_contact
      t.string :emergency_contact_phone
      t.string :other_prog
      t.string :school
      t.string :current_grade
      t.string :scores
      t.string :math_courses
      t.string :science_courses
      t.text :programming
      t.string :LOR_names
      t.text :essay1
      t.text :essay2
      t.text :essay3
      t.boolean :confirm

      t.timestamps
    end
  end
end
