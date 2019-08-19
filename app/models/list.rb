class List < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5}
    validates :info, presence: true
end
