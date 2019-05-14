class CreateLearningRecord < ActiveRecord::Migration[5.2]
  def change
    create_table :learning_records do |t|
      t.references :learner
      t.string :learner_type
      t.string :class_code
      t.references :certificate
      t.references :course_instance
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.text :note
      t.references :partner
      t.string :hannah
      t.timestamps
    end
  end
end
