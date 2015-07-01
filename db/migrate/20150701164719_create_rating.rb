class CreateRating < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.boolean :vote
      t.integer :work_id
      t.timestamps
    end
  end
end
