class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :picture_url
      t.float :price
      t.timestamps
    end
  end
end
