ActiveAdmin.register Question do
  form do |f|
    f.inputs "Questions" do
      f.input :photo, :as => :file
      f.input :photo_mini, :as => :file
    end
    f.buttons
  end
 
end
