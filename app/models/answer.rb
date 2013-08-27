class Answer < ActiveRecord::Base
  attr_accessible :answer
  has_many :questions
end
