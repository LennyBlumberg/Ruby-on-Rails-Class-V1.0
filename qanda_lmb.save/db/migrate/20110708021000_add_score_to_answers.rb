class AddScoreToAnswers < ActiveRecord::Migration
  def self.up
    add_column :answers, :score, :integer, :default => 0
  end

  def self.down
    remove_column :answers, :score
  end
end

