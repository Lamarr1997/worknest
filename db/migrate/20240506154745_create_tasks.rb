class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :location
      t.float :price
      t.string :description
      t.date :available_date
      t.string :devise
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
