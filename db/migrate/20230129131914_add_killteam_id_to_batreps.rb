class AddKillteamIdToBatreps < ActiveRecord::Migration[6.1]
  def change
    add_column :batreps, :killteam_id, :integer
  end
end
