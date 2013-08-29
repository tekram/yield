class Report < ActiveRecord::Base
  attr_accessible :accession_number, :attending_id, :certainty, :department, :dob, :exam_code, :exam_date, :impression, :positivity, :pseudo_mrn, :report, :requesting_md_id
end
