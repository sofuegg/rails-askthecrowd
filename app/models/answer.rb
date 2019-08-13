class Answer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :choice
  belongs_to :question
end
