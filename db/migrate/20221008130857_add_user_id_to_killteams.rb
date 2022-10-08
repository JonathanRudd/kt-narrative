class AddUserIdToKillteams < ActiveRecord::Migration[6.1]
  def change
    add_column :killteams, :user_id, :integer
  end
end
