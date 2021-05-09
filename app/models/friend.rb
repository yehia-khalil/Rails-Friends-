class Friend < ApplicationRecord
    has_many :comment, dependent: :destroy
    validates :name, presence: true, length: {minimum: 2}
    validates :age, presence: true
end
