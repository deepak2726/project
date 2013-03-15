class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.integer :question_type_id
      t.integer :sort_order
      t.boolean :is_published
      t.boolean :is_shared
      t.integer :user_id
      t.integer :subject_id
      t.string :name
      t.integer :parent_id
      t.integer :category_subject_id
      t.integer :mark
      t.integer :feed_back

      t.timestamps
    end
  end
end
