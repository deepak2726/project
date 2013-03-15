class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.string :exam_code
      t.text :instruction
      t.string :exam_type
      t.integer :total_mark
      t.string :subject
      t.integer :organisation_id
      t.datetime :exam_date
      t.time :total_time
      t.timestamps
    end
  end
end
