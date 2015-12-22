class Book < ActiveRecord::Base
	has_many :book_genres
	has_many :genres, through: :book_genres
	before_save :set_keyword

	scope :search, ->(keyword){where('key_words LIKE ?',"%#{keyword.downcase}%") if keyword.present? }
##	scope :filter, ->(name){joins(:genres).where('genres.name=?',name) if name.present? }

	def img_url
		url='http://ecx.images-amazon.com/images/P/'
		if amazon_id
			@ima_url=url+"#{self.amazon_id}.01._PE20_SCMZZZZZZZ_.jpg"
		end
		return @ima_url
	end
	protected
	def set_keyword
		self.key_words=[name,author,description,amazon_id].map { |p| p.downcase }
			.join(' ')
	end
end
