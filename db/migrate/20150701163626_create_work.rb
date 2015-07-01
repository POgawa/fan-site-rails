class CreateWork < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :description
      t.integer :theme_id
      t.timestamps
    end
  end
end
