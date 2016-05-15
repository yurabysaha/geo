class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
      t.integer :count_question, default: 1
      t.integer :current_score, default: 0

      t.timestamps null: false
    end
  end
end
