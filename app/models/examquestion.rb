class Examquestion < ActiveRecord::Base
  belongs_to :exam
  belongs_to :question
end
