require 'csv'

class RequestingMd < ActiveRecord::Base
  attr_accessible :name

  has_many :reports
  has_many :score_cards, :as => :gradeable

	def self.exportAll
		CSV.open('RequestingMDs.csv','wb') do |csv|
			RequestingMd.all.each {|ex|
				csv << [ex.id,ex.score_cards.first.score,ex.score_cards.first.total]
			}
		end
	end

	def self.score
		RequestingMd.all.each {|examee|
			reports = examee.reports
			if reports.length == 0
				next
			end
			if examee.score_cards.empty?
				sc = ScoreCard.create(:gradeable => examee, :exam_code_id => 1)
			else
				sc = examee.score_cards.first
			end
			score = 0
			reports.each{|report|
				puts report.id
				if report.positivity != nil
					score = score + report.positivity.classification
				else
					next
				end
			}
			sc.total = reports.length
			sc.score = Float(score)/Float(reports.length)
			sc.save
		}
  end
  
  def positiveReports
		return self.reports.where(:positivity => 1)
  end

  def positiveReportsByExamCode(exam_code)
		return self.reports.where(:positivity => 1, :exam_code_id => exam_code)
  end

end
