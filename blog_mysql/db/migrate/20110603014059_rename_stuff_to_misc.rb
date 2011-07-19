class RenameStuffToMisc < ActiveRecord::Migration
  def self.up
  rename_column :posts, :stuff, :misc
  end

  def self.down
  end
end
