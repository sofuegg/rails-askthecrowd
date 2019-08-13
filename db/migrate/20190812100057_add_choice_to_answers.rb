class AddChoiceToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :choice, foreign_key: true
  end
end
