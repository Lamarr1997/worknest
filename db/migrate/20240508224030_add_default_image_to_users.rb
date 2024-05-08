class AddDefaultImageToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :local_image_file_name, :string
  end
end
