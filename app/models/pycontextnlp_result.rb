class PycontextnlpResult < ActiveRecord::Base
  attr_accessible :classification, :most_positive_target, :report_number, :run_args, :schema, :target_category
  
	belongs_to :report, :foreign_key => "report_number"
  
end
