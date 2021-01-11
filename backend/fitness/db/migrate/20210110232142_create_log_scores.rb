class CreateLogScores < ActiveRecord::Migration[6.0]
  def change
    create_table :log_scores do |t|
      t.integer :points_worked_out
      t.integer :points_tracked_food
      t.integer :points_met_calorie_goal
      t.integer :points_maintain_weight
      t.integer :points_maintain_body_fat
      t.integer :points_met_active_calorie_goal
      t.string :total_points
      t.string :integer
      t.belongs_to :log, null: false, foreign_key: true
      t.belongs_to :challenge_goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
