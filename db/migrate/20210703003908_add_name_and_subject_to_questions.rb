class AddNameAndSubjectToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :name, :string
    add_column :questions, :subject, :string
  end
end
