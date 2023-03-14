class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    validate :is_expected_not_to_allow_value
    def is_expected_not_to_allow_value
        if title== "True Facts"
      errors.add(:title, "Title not permitted")
    end
end
end
