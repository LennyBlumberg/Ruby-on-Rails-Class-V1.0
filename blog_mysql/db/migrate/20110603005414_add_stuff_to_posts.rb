class AddStuffToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :stuff, :string, :default => "Lenny"
  end

  def self.down
    remove_column :posts, :stuff
  end
end
