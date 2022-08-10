class AddTitleToBatreps < ActiveRecord::Migration[6.1]
  def change
    add_column :batreps, :title, :string
  end
end
