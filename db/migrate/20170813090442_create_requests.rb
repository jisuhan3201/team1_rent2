class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :owner_id
      t.string :request_status, default: "Stand_by"
      t.date :rent_begin_date
      t.date :rent_due_date

      t.timestamps
    end
  end
end
