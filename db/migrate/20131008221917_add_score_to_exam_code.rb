class AddScoreToExamCode < ActiveRecord::Migration
  def change
    add_column :exam_codes, :score, :float
  end
end
