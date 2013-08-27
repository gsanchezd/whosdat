class Question < ActiveRecord::Base
  attr_accessible :answer_id, :photo
  belongs_to :answer
  mount_uploader :photo, PhotoUploader
end	
