class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.string :title
      t.string :A
      t.string :B
      t.string :C
      t.string :D
      t.string :good

      t.timestamps null: false
    end
  end
end
