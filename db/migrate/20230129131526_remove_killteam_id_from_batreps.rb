class RemoveKillteamIdFromBatreps < ActiveRecord::Migration[6.1]
  def change
    remove_column :batreps, :killteam_id, :bigint
  end
end
