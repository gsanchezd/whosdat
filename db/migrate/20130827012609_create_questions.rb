class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :photo
      t.integer :answer_id

      t.timestamps
    end
  end
end
