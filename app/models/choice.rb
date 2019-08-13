class Choice < ApplicationRecord
  has_many :answers
  belongs_to :question, optional: true
end
