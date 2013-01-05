class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :appform, :current_grade, :integer
  end

end
