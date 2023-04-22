class LetterComment < ApplicationRecord
  belongs_to :user
  belongs_to :letter
  
  validates :comment, presence: true
end
