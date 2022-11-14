class DeleteBatrep < ActiveRecord::Migration[6.1]
  def change
    drop_table(:batreps)
  end
end
