class CreatePycontextnlpResults < ActiveRecord::Migration
  def change
    create_table :pycontextnlp_results do |t|
      t.integer :report_number
      t.integer :run_args
      t.integer :schema
      t.text :target_category
      t.integer :classification
      t.text :most_positive_target

      #t.timestamps
    end
  end
end
