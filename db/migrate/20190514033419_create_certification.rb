class CreateCertification < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.references :learning_record
      t.string :cert_no, null: false
      t.string :cert_name, null: false
      t.string :cert_type
      t.references :certificate
      t.references :course_instance
      t.string :cert_file_link
      t.timestamps
    end
  end
end
