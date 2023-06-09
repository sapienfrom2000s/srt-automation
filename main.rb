require_relative 'sentence_fetcher'
require 'pry-byebug'

def main
	sentence = SentenceFetcher.new
	input = gets.chomp.split(';')
	input.inject(paragraph='') do |paragraph, type_identifier|
		paragraph + sentence.fetch(type_identifier).sample
	end
end

loop do
  paragraph = main
  puts paragraph
  File.write('/tmp/u99.txt', paragraph)
  system("xclip -sel clip < /tmp/u99.txt")
end
