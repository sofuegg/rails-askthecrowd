class AddQuestionToChoices < ActiveRecord::Migration[5.2]
  def change
    add_reference :choices, :question, foreign_key: true
  end
end
