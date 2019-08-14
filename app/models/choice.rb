class Choice < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :question, optional: true

end
