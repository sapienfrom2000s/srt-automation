require_relative 'conclusion'
require_relative 'description'
require_relative 'image'
require_relative 'video'
require_relative 'special_case'

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
		when "ggi"
			Image.good_generic	
		when "bgi"
			Image.bad_generic
		when "bei"
			Image.bad_editing
		when "gev"
			Video.good_editing
		when "ggpv"
			Video.good_generic_product
		when "bgv"
			Video.bad_graphics
		when "bev"
			Video.bad_editing
		when "ggv"
			Video.good_generic
		when "gc"
			Conclusion.good
		when "bc"
			Conclusion.bad
		when "misleading"
			Special.misleading
		else 
			raise "check docs"
		end
	end
end