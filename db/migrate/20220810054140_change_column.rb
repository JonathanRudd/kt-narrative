class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column(:batreps, :versus, 'integer USING CAST("versus" AS integer)')
  end
end
