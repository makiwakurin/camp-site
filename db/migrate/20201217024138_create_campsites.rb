class CreateCampsites < ActiveRecord::Migration[6.0]
  def change
    create_table :campsites do |t|
      t.string :name,    null:false
      t.text   :text,    null:false
      t.timestamps
    end
  end
end
