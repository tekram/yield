class ScoreCard < ActiveRecord::Base
  attr_accessible :exam_code_id, :gradeable, :gradeable_type, :score, :total
  
  belongs_to :gradeable, :polymorphic => true
  
end
