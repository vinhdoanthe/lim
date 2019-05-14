class CreateTranscript < ActiveRecord::Migration[5.2]
  def change
    create_table :transcripts do |t|
      t.references :course_instance
      t.references :learning_record
      t.integer :question_no, default: 0
      t.integer :quiz_no, default: 0
      t.decimal :assignment_1_point, default: 0
      t.decimal :assignment_2_point, default: 0
      t.decimal :assignment_3_point, default: 0
      t.decimal :assignment_4_point, default: 0
      t.decimal :assignment_5_point, default: 0
      t.decimal :assignment_6_point, default: 0
      t.decimal :final_exam_point, default: 0
      t.decimal :total_point
      t.string :status
      t.date :completed_date
      t.string :grade
      t.text :comment
      t.timestamps
    end
  end
end
