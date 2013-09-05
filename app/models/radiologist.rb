class Radiologist < ActiveRecord::Base
  attr_accessible :name
  
  has_many :reports
  
  def positiveReports
	return self.reports.where(:positivity => 1)
  end

  def positiveReportsByExamCode(exam_code)
		return self.reports.where(:positivity => 1, :exam_code_id => exam_code)
  end

end
