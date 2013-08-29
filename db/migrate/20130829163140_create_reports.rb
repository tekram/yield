class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :pseudo_mrn
      t.string :accession_number
      t.date :dob
      t.string :department
      t.string :exam_code
      t.datetime :exam_date
      t.integer :requesting_md_id
      t.integer :attending_id
      t.text :report
      t.text :impression
      t.integer :positivity
      t.integer :certainty

      t.timestamps
    end
  end
end
