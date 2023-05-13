require_relative 'conclusion'
require_relative 'description'
require_relative 'image'
require_relative 'video'

class SentenceFetcher
	def fetch(type_identifier)
		case type_identifier
		when "ggd"
			Description.good_generic
		when "gpd"
			Description.good_product
		when "god"
			Description.good_offer
		when "bsd"
			Description.bad_short
		when "bad"
			Description.bad_absent
		when "bed"
			Description.bad_emojis
		when "ggpi"
			Image.good_generic_pimage
		when "gcpi"
			Image.good_captions_pimage
		when "ggci"
			Image.good_genericwithcaptions
		when "bgi"
			Image.bad_generic
		when "gev"
			Video.good_editing
		when "bgv"
			Video.bad_graphics
		when "bev"
			Video.bad_editing
		when "gc"
			Conclusion.good
		when "bc"
			Conclusion.bad			
		else 
			raise "check docs"
		end
	end
end