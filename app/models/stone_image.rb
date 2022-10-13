class StoneImage < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :stone_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :shop_name, presence: true
	validates :image, presence: true

	def favorited_by?(user)
		# logger.debug "よしああ: #{favorites.where(user_id: user.id).exists?}"
		favorites.where(user_id: user.id).exists?
	end
end
