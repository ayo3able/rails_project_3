class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :invite_accepted, :boolean
    add_column :users, :work_or_school, :integer
    add_column :users, :work_name, :string
    add_column :users, :school_name, :string
  end
end
