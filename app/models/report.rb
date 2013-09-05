require 'csv'
class Report < ActiveRecord::Base
	
	attr_accessible :accession_number, :attending_id, :certainty, :department, :dob, :exam_code_id, :exam_date, :impression, :positivity, :pseudo_mrn, :report, :requesting_md_id, :radiologist_id
	
	set_primary_key "accession_number"
	
	belongs_to :exam_code
	belongs_to :requesting_md
	belongs_to :radiologist
	belongs_to :attending
	
	def self.grade
		Report.all.each{|report|
			if report.impression.downcase.include?("no evidence of pulmonary embolism")
				report.positivity = 0
				report.save
			else
				report.positivity = 1
				report.save
			end
		}
	end
	
	def self.import()
		CSV.foreach("ctpe.csv", {:col_sep => "|"}) do |row|
			attending = Attending.find_or_create_by_name(:name => row[8])
			requesting_md = RequestingMd.find_or_create_by_name(:name => row[7])
			radiologist = Radiologist.find_or_create_by_name(:name => row[9])
			exam_code = ExamCode.find_or_create_by_name(:name => row[5])
			Report.create(:pseudo_mrn => row[0], :accession_number => row[1], :dob => Date.strptime(row[2], '%m/%d/%Y'),
				:requesting_md_id => requesting_md.id, :attending_id => attending.id, :exam_code_id => exam_code.id,
				:radiologist_id => radiologist.id, :impression => Report.extractImpression(row[10]),
				:exam_date => DateTime.parse(row[6]))
		end
	end

	def self.extractImpression(report)
		return report.split("IMPRESSION:")[1].split("SUMMARY")[0]
	end


end
