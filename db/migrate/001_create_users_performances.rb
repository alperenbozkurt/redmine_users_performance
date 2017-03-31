class CreateUsersPerformances < ActiveRecord::Migration
  def change
    create_table :users_performances do |t|
      t.string :user_name
      t.float :hours
    end
  end
end
