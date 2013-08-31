class CreateExamCodes < ActiveRecord::Migration
  def change
    create_table :exam_codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
