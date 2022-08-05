class CreateWarzones < ActiveRecord::Migration[6.1]
  def change
    create_table :warzones do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
