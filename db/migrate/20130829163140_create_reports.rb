class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do, :id => false |t|
      t.string :pseudo_mrn
      t.integer :accession_number
      t.date :dob
      t.string :department
      t.integer :exam_code_id
      t.datetime :exam_date
      t.integer :requesting_md_id
      t.integer :attending_id
      t.text :report
      t.text :impression
      t.integer :positivity
      t.integer :certainty
	  t.integer :radiologist_id	

      t.timestamps
    end
  end
end
