class Unicorn < ApplicationRecord
	has_many :reviews, dependent: :destroy
end
