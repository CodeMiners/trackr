class ChangeUsersIdToUserIdInTasks < ActiveRecord::Migration
  def change
  	rename_column :tasks, :users_id, :user_id
  end
end
