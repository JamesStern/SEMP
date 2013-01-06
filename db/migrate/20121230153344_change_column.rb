class ChangeColumn < ActiveRecord::Migration
  def up
  	connection.execute(%q{
    alter table appform
    alter column current_grade
    type integer using cast(number as integer)
  })
  end

end
