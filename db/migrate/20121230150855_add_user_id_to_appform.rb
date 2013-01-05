class AddUserIdToAppform < ActiveRecord::Migration
  def change
    add_column :appforms, :user_id, :integer
  end
end
