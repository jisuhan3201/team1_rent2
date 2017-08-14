class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.string :category
      t.string :sub_category
      t.string :image
      t.string :status, default: :available


      t.timestamps
    end
  end
end
