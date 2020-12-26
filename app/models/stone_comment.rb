class StoneComment < ApplicationRecord
	belongs_to :user
	belongs_to :stone_image
end
