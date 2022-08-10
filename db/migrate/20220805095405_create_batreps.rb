class CreateBatreps < ActiveRecord::Migration[6.1]
  def change
    create_table :batreps do |t|
      t.string :versus
      t.text :report
      t.belongs_to :killteam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
