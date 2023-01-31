class CreateTranings < ActiveRecord::Migration[7.0]
  def change
    create_table :tranings do |t|
      t.references :user, foreign_key: true,null: false
      t.string :bodypart_menu
      t.float :weight_1set
      t.integer :reps_1set
      t.float :weight_2set
      t.integer :reps_2set
      t.float :weight_3set
      t.integer :reps_3set
      t.float :weight_4set
      t.integer :reps_4set
      t.float :weight_5set
      t.integer :reps_5set
      t.float :weight_6set
      t.integer :reps_6set
      t.float :weight_7set
      t.integer :reps_7set
      t.timestamps null: false
    end
  end
end
