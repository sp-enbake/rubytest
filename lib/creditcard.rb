class Creditcard
	# Check Credit card
	def self.valid?(number)
	  digits = number.to_s.scan(/./).map(&:to_i)
	  check = digits.pop
	  sum = digits.reverse.each_slice(2).map do |x, y|
	    [(x * 2).divmod(10), y || 0]
	  end.flatten.inject(:+)
	  (10 - sum % 10) == check
  end

  # Append checksum to credit card 
	def self.append_check_digit(number)
		digits = number.to_s.reverse.scan(/\d/).map { |x| x.to_i }
		digits = digits.each_with_index.map { |d, i|
		d *= 2 if i.even?
		d > 9 ? d - 9 : d
		}
		sum = digits.inject(0) { |m, x| m + x }
		mod = 10 - sum % 10
		mod==10 ? 0 : mod
		(number.to_s+mod.to_s).to_i
	end

end
