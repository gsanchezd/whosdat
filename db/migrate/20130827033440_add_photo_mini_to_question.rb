class AddPhotoMiniToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :photo_mini, :string
  end
end
