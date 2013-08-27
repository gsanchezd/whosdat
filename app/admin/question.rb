ActiveAdmin.register Question do
  form do |f|
    f.inputs "Questions" do
      f.input :photo, :as => :file
    end
    f.buttons
  end
 
end
