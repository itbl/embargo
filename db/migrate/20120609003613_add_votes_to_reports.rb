class AddVotesToReports < ActiveRecord::Migration
  def change
  	add_column :reports, :up_votes, :integer, :null => false, :default => 0
    add_column :reports, :down_votes, :integer, :null => false, :default => 0
  end
end
