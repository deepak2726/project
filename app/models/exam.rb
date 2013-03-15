class Exam < ActiveRecord::Base
  
  attr_accessible :exam_code, :exam_type, :instruction, :name, :organisation_id, :subject, :total_mark
  
  has_many :examquestion
  has_many :questions, :through => :examquestion
end
