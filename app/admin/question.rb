ActiveAdmin.register Question do
  form do |f|
    f.inputs "Questions" do
      f.input :photo, :as => :file
      f.input :photo_mini, :as => :file
      f.input :answer, :as => :select, :collection => Answer.all.map{|u| [u.answer, u.id]} 
    end
    f.buttons
  end
 
end
