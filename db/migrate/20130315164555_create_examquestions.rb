class CreateExamquestions < ActiveRecord::Migration
  def change
    create_table :examquestions do |t|

      t.timestamps
    end
  end
end
