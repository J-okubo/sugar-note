class CreatePostComments < ActiveRecord::Migration[7.0]
  def change
    create_table :post_comments do |t|
      t.text :content,          null:false
      t.references :user,	      null: false, foreign_key: true
      t.references :posts,	    null: false, foreign_key: true
      t.timestamps
    end
  end
end
