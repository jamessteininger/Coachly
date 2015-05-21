class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :author_id
      t.text :positive_content
      t.text :improvement_content
      t.text :tags

      t.timestamps null: false
    end
  end
end
