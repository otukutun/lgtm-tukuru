class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :slug, null: false
      t.index :slug, unique: true

      t.timestamps
    end
  end
end
