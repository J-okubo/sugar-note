class CreateBloods < ActiveRecord::Migration[7.0]
  def change
    create_table :bloods do |t|
      t.date :date,             null:false
      t.integer :time,          null:false
      t.integer :beforemeal,    null:false
      t.integer :aftermeal,     null:false
      t.references :user,	      null: false, foreign_key: true
      t.timestamps
    end
  end
end
