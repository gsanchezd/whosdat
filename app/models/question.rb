class Question < ActiveRecord::Base
  attr_accessible :answer_id, :photo, :photo_mini
  belongs_to :answer
  mount_uploader :photo, PhotoUploader
  mount_uploader :photo_mini, PhotoUploader

end	
