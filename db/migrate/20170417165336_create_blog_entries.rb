class CreateBlogEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_entries do |t|
      t.string :user_id
      t.string :title
      t.string :text

      t.timestamps
    end
    add_index :blog_entries, [:user_id, :created_at]
  end
end
