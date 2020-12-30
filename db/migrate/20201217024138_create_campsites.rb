class CreateCampsites < ActiveRecord::Migration[6.0]
  def change
    create_table :campsites do |t|
      t.string :name,                 null:false
      t.text   :text,                 null:false
      t.references :user,             null: false, foreign_key: true 
      t.integer    :genre_id,         null: false
      t.integer    :prefecture_id,    null: false
      t.integer    :status_id,        null: false
      t.integer    :category_id,      null: false
      t.timestamps
    end
  end
end
