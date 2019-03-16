require 'csv'
require 'open-uri'

class BibleNumerology
	@allNumbers = Hash.new

	def initialize(number, interpretation)
		@number = number
		@interpretation = interpretation
	end

	def self.init
		pathOne = "https://raw.githubusercontent.com/kkuivenhoven/BibleNumerology/master/nums.csv"
		CSV.new(open(pathOne)).each do |numLineOne|
			@allNumbers[numLineOne[0].to_i] = numLineOne[1]
		end
		pathTwo = "https://raw.githubusercontent.com/kkuivenhoven/BibleNumerology/master/lastNums.csv"
		CSV.new(open(pathTwo)).each do |numLineTwo|
			@allNumbers[numLineTwo[0].to_i] = numLineTwo[1]
		end
		return "init complete"
	end

	def self.getAllNums
		return @allNumbers.keys
	end	

	def self.getAllMeaningsOnly
		return @allNumbers.values.map! { |e| (e.nil? ? e : e.gsub("_", " ")) }
	end	

	def self.getAllNumsMeanings
		@allNums = Hash.new
		@allNumbers.each do |num, meaning|
			if !meaning.nil?
				@allNums[num] = meaning.gsub("_", " ")
			end
		end
		return @allNums
	end	

	def self.getNum(num)
		return @allNumbers[num].nil? ? @allNumbers[num] : @allNumbers[num].gsub("_", " ")
	end	

end

