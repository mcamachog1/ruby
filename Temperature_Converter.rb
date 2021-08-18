=begin
Activity: Temperature Converter
Statement:  Create a function that converts temperatures between Celsius and Fahrenheit scales.
Celsius to Fahrenheit:
(Tc x 9/5) + 32 = Tf
(Tf - 32) x 5/9 = Tc
=end

def tempConverter(input, scale='C')
	if scale == 'C'
		temp=(input * 9/5)+32.0
		output="#{input}° Celsius corresponden a #{temp}° Fahrenheit"
	elsif scale =='F'
		temp=(input-32.0)*5/9
		output="#{input}° Fahrenheit corresponden a #{temp}° Celsius"
	else
		output= "Indique una escala válida (F ó C)"
	end
	output
end

puts tempConverter(0)
puts tempConverter 37
puts tempConverter 15,"F"
puts tempConverter(100,"F")
puts tempConverter 0, "F"
puts tempConverter 90, "K"
