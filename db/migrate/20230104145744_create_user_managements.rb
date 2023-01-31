class CreateUserManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :user_managements do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :bodypart
      t.string :menu
      t.timestamps
    end
  end
end
