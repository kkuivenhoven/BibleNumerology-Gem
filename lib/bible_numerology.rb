require 'csv'
require 'open-uri'

class BibleNumerology
	@allNumbers = Hash.new

	def initialize(number, interpretation)
		@number = number
		@interpretation = interpretation
	end

	def self.init
		path = "https://raw.githubusercontent.com/kkuivenhoven/BibleNumerology/master/nums.csv"
		CSV.new(open(path)).each do |numLine|
			@allNumbers[numLine[0].to_i] = numLine[1]
		end
		return "init complete"
	end

	def self.getAllNums
		return @allNumbers.keys
	end	

	def self.getAllMeaningsOnly
		return @allNumbers.values.map! { |e| e.gsub("_", " ") }
	end	

	def self.getAllNumsMeanings
		@allNums = Hash.new
		@allNumbers.each do |num, meaning|
			@allNums[num] = meaning.gsub("_", " ")
		end
		return @allNums
	end	

	def self.getNum(num)
		return @allNumbers[num].gsub("_", " ")
	end	

end

