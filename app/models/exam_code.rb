class ExamCode < ActiveRecord::Base
  attr_accessible :name
  
  has_many :reports
  
	def self.score
		ExamCode.all.each{|examcode|
			score = 0
			examcode.reports.each{|report|
				puts report.id
				if report.positivity != nil
					score = score + report.positivity.classification
				else
					next
				end
			}
			examcode.total = examcode.reports.length
			examcode.score = Float(score)/Float(examcode.reports.length)
			examcode.save
		}
  end
  
  def positiveReports
		return self.reports.where(:positivity => 1)
  end
 
end
