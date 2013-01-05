class Appform < ActiveRecord::Base
  belongs_to :user 
  attr_accessible :LOR_names, :address, :age, :citizen, :city, :confirm, :current_grade, :email, :emergency_contact, :emergency_contact_phone, :essay1, :essay2, :essay3, :first_name, :gender, :last_name, :math_courses, :other_prog, :phone_number, :programming, :school, :science_courses, :scores, :state, :zip_code, :user_id
end
