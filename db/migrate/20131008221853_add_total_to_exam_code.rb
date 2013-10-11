class AddTotalToExamCode < ActiveRecord::Migration
  def change
    add_column :exam_codes, :total, :integer
  end
end
