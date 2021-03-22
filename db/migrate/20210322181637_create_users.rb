class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.password_digest :password
      t.boolean :invite_accepted
      t.integer :work_or_school
      t.string :work_name
      t.string :school_name

      t.timestamps
    end
  end
end
