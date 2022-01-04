=begin
	
Ruby  fundamentals:
- Variables and scopes
- Basic numeric types:
  - Integer
  - Fixnum
  - Bignum
  - Float
  - Rational
  - Math methods
- Operators:
  - Arithmetic operators
  - Assignment operators
  - Parallel assignment operator
  - Comparison operators
  - Bitwise operators
  - Logical operators
  - Operator precedence
- Arrays
- Ranges
- Strings:
  - Basics
  - Concatenation
  - Comparison
  - Conversion
  - Replacement/substitution/insertion
- Booleans and Nil
- Symbols
- Hashes
- Flow control:
  - If/else/elsif statements
  - Ternary operator
  - case statement
  - Loops
- OOP basics with Ruby
  - Object
  - Classes
  - Object initialization
  - Instance variables
  - Methods
  - Self
  - Class inheritance
- Date and time
	
=end

#Variables and scopes



#Hash and symbols
book={:titulo}
var = "this is a variable"
:var

puts var.object_id
puts :var.object_id

var = var + " sufijo"
:var = :var + " sufijo"

puts var.object_id
puts :var.object_id
