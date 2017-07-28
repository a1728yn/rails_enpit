class AddModifiedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :modified, :datetime
  end
end
