class CreateKillteams < ActiveRecord::Migration[6.1]
  def change
    create_table :killteams do |t|
      t.string :name
      t.text :description
      t.integer :requisition
      t.integer :assetcap
      t.string :base
      t.string :factionkeyword

      t.timestamps
    end
  end
end
