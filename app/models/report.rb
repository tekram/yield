require 'csv'
class Report < ActiveRecord::Base
	
	attr_accessible :accession_number, :attending_id, :certainty, :department, :dob, :exam_code_id, :exam_date, :impression, :positivity, :pseudo_mrn, :report, :requesting_md_id, :radiologist_id
	
	set_primary_key "accession_number"
	
	belongs_to :exam_code
	belongs_to :requesting_md
	belongs_to :radiologist
	belongs_to :attending
	has_many :pycontextnlp_results, :foreign_key => "report_number"
	
	def positivity
		return self.pycontextnlp_results.where(:target_category => "pulmonary_embolism")[0]
	end	
	
	def self.grade
		Report.all.each{|report|
		}
	end
	
	def self.import()
		CSV.foreach("ctpe.txt", {:col_sep => "|"}) do |row|
			if row[10] == nil or row[10].split("IMPRESSION:")[1] == nil
					next
			end
			attending = Attending.find_or_create_by_name(:name => row[8])
			requesting_md = RequestingMd.find_or_create_by_name(:name => row[7])
			radiologist = Radiologist.find_or_create_by_name(:name => row[9])
			exam_code = ExamCode.find_or_create_by_name(:name => row[5])
			Report.create(:pseudo_mrn => row[0], :accession_number => row[1], :dob => Date.strptime(row[2], '%m/%d/%Y'),
				:requesting_md_id => requesting_md.id, :attending_id => attending.id, :exam_code_id => exam_code.id,
				:radiologist_id => radiologist.id, :impression => Report.extractImpression(row[10]),
				:exam_date => DateTime.strptime(row[6],'%m/%d/%y %H:%M'))
		end
	end

	def self.extractImpression(report)
		return report.split("IMPRESSION:")[1].split("SUMMARY")[0]
	end

	def self.cleanUp
		Report.all.each {|rep|
				puts rep.id
				rep.impression = rep.impression.gsub(/[\x80-\xff]/,"")
				rep.save
		}
	end

end
