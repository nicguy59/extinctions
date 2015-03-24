class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.references :classification, index: true
      t.string :name
      t.string :range
      t.integer :extinction_date
      t.string :url
      t.string :image_url

      t.timestamps null: false
    end
    #add_foreign_key :animals, :classification
  end
end
