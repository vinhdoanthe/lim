class UpdateLearnerBasicProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :learners, :funid, :string
    add_column :learners, :full_name, :string
    add_column :learners, :gender, :string
    add_column :learners, :id_no1, :string
    add_column :learners, :id_no2, :string
    add_column :learners, :primary_phone, :string
    add_column :learners, :secondary_phone, :string
    add_column :learners, :secondary_email, :string
    add_column :learners, :facebook1, :string
    add_column :learners, :facebook2, :string
  end
end
