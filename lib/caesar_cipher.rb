class Caesar_Cipher
	def initialize
	end



	def caesar_cipher(secret_message, shift_factor)
		simplified_shift_value = shift_factor % 26
		lowercase_range, uppercase_range, encoded_message  = (97..122), (65..90), ""
		secret_message.each_char do |char|
			orig_char_value = char.ord 
			new_char_value = nil
			if lowercase_range === orig_char_value 
				new_char_value = orig_char_value + simplified_shift_value
				new_char_value -= 26 if new_char_value>122
			elsif uppercase_range === orig_char_value
				new_char_value = orig_char_value + simplified_shift_value
				new_char_value -= 26 if new_char_value> 90
			else
				new_char_value = orig_char_value
			end
			encoded_message += new_char_value.chr
		end
		encoded_message
	end

end



=begin
#TEST CASES:

cc = Caesar_Cipher.new

puts cc.caesar_cipher("test GH _ run, z", 0)
puts cc.caesar_cipher("test GH _ run, z", 2)
puts cc.caesar_cipher("test GH _ run, z", 28)
=end







