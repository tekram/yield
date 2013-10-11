class CreateScoreCards < ActiveRecord::Migration
  def change
    create_table :score_cards do |t|
      t.integer :total
      t.float :score
      t.integer :exam_code_id
      t.integer :gradeable_id
      t.string :gradeable_type

      t.timestamps
    end
  end
end
