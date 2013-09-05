class ExamCode < ActiveRecord::Base
  attr_accessible :name
  
  has_many :reports
  
  def positiveReports
	return self.reports.where(:positivity => 1)
  end
 
end
