class AddFileToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :file, :string, after: :slug
  end
end
