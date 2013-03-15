class Question < ActiveRecord::Base
  
  attr_accessible :category_subject_id, :description, :feed_back, :is_published, :is_shared_boolean, :mark, :name, :parent_id, :question_type_id, :sort_order, :subject_id, :user_id
  
  has_many :examquestion
  has_many :exams, :through => :examquestion
end
