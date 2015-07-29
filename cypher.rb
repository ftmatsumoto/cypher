def caesar_cypher(string_convert,key=0)
	chars = []
	chars = string_convert.split("")
	result = ""
  l_letters = ('a'..'z').to_a
  u_letters = ('A'..'Z').to_a
  chars.each do |x|
		if l_letters.include?(x)
			new_index = l_letters.index(x) + key.to_i
			new_index = (26 - new_index).abs if new_index > 25	
			result += l_letters[new_index]
		elsif u_letters.include?(x)
			new_index = u_letters.index(x) + key.to_i
			new_index = (26 - new_index).abs if new_index > 25
			result += u_letters[new_index]
		else
			result += x
		end
	end
	print result
end

print "Digite sua string:"
x = gets.chomp
print "Digite um número:"
y = gets.chomp
caesar_cypher(x,y)