class AddVotesToAccusations < ActiveRecord::Migration
  def change
  	add_column :accusations, :up_votes, :integer, :null => false, :default => 0
    add_column :accusations, :down_votes, :integer, :null => false, :default => 0
  end
end
