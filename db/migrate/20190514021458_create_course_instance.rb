class CreateCourseInstance < ActiveRecord::Migration[5.2]
  def change
    create_table :course_instances do |t|
      t.string :code, null: false, default: ''
      t.string :name, null: false, default: ''
      t.references :partner
      t.string :status
      t.references :certificate
      t.decimal :total_xp, default: 100
      t.integer :question_no, default: 0
      t.decimal :question_percentage, default: 0
      t.integer :quiz_no, default: 0
      t.decimal :quiz_percentage, default: 0
      t.decimal :assignment_1_percentage, default: 0
      t.decimal :assignment_2_percentage, default: 0
      t.decimal :assignment_3_percentage, default: 0
      t.decimal :assignment_4_percentage, default: 0
      t.decimal :assignment_5_percentage, default: 0
      t.decimal :assignment_6_percentage, default: 0
      t.decimal :final_exam_percentage, default: 0
      t.timestamps
    end
  end
end
