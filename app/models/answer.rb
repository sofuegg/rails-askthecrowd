class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :choice
  belongs_to :question
end
