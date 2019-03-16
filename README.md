# BibleNumerology-Gem
This gem is an unofficial wrapper for Mark H. Lane's Bible based numerical interpretations. This gem contains interpretations or meanings for numbers 1-2095. Please visit Mark H. Lane's site, [here](https://biblenumbersforlife.com), for more study information on each numerical interpretation.
<br>
[![Bible Numerology](https://badge.fury.io/rb/bible_numerology.svg)](https://badge.fury.io/rb/bible_numerology)

## Getting Started
1. Add to Gemfile
 `gem 'bible_numerology'`
2. Run $ bundle install
3. Add `require 'bible_numerology'` 
4. Initialize library:
    `BibleNumerology.init`
5. Call any available method (examples listed below)

### Available methods:
1. Obtain all numbers for which there are interpretations/meanings<br>
	`@nums = BibleNumerology.getAllNums`

2. Get only interpretations<br>
	`@meanings = BibleNumerology.getAllMeaningsOnly`

3. Get all numbers with their associated interpretation/meaning<br>
	`@nums_meanings = BibleNumerology.getAllNumsMeanings`

4. Get the meaning of a particular number<br>
	For example, to get the meaning of the number 5:<br>	
	`@num_meaning = BibleNumerology.getNum(5)`
