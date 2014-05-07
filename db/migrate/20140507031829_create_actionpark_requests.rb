class CreateActionparkRequests < ActiveRecord::Migration
  def change
    create_table :actionpark_requests do |t|
      t.string :controller_name
      t.string :action_name
      t.integer :user_id
      t.datetime :created_at
    end
  end
end
