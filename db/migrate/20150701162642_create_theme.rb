class CreateTheme < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
