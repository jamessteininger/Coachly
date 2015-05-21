class CreateFeedbackRequests < ActiveRecord::Migration
  def change
    create_table :feedback_requests do |t|
      t.integer :user_id
      t.integer :sender_id
      t.text :prompt
      t.boolean :b_read

      t.timestamps null: false
    end
  end
end
