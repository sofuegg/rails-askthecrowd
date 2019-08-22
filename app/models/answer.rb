class Answer < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :choice
  belongs_to :question
  # scope :ordered_by_most_recent -> { order(created_at: :desc) }

end
