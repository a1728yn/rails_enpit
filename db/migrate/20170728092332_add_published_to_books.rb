class AddPublishedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :published, :datetime
  end
end
