require 'benchmark'
require 'yaml'

class RbAddHistory < ActiveRecord::Migration
  def self.up
    drop_table :rb_journals if ActiveRecord::Base.connection.table_exists?('rb_journals')

    create_table :rb_issue_history do |t|
      t.column :issue_id,    :integer, :default => 0,  :null => false
      t.text   :history
    end

    create_table :rb_sprint_history do |t|
      t.column :version_id,    :integer, :default => 0,  :null => false
      t.text   :issues
    end

    RbIssueHistory.rebuild
    add_index :rb_issue_history, :issue_id, :unique => true
    add_index :rb_sprint_history, :version_id, :unique => true
  end

  def self.down
  end
end
