# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appform do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip_code "MyString"
    phone_number "MyString"
    email "MyString"
    age 1
    gender "MyString"
    citizen false
    emergency_contact "MyString"
    emergency_contact_phone "MyString"
    other_prog "MyString"
    school "MyString"
    current_grade "MyString"
    scores "MyString"
    math_courses "MyString"
    science_courses "MyString"
    programming "MyText"
    LOR_names "MyString"
    essay1 "MyText"
    essay2 "MyText"
    essay3 "MyText"
    confirm false
  end
end
