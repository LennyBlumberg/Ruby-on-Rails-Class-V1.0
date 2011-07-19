class AddAssociations < ActiveRecord::Migration
  def self.up
    add_column :questions, :user_id, :integer
    add_column :answers, :user_id, :integer
  end

  def self.down
    remove_column :questions, :user_id
    remove_column :answers, :user_id
  end
end
