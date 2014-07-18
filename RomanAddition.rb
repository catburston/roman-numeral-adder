require 'pry'
NUMERAL_HASH = {"D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }

class RomanAddition
  # def add_test(numeral_one, numeral_two)
  #   working_numeral = numeral_one+numeral_two

  #   working_array = working_numeral.split(//)

  #   inumbers = working_array.take_while do |item| item == "I"
  #   end
  #   if inumbers.length == 4
  #     "IV"
  #   elsif inumbers.length == 5
  #     "V"
  #   else
  #   working_numeral
  #   end
  # end

  def convert_sticks(numeral)
    working_numeral = numeral.split(//)
    working_numeral.each do |value|
      add_sticks(NUMERAL_HASH[value])
    end
    return @final_sticks
  end

  def add_sticks(n)
    @final_sticks = ""
    n.times do
      @final_sticks+="I"
    end
  end

  def calc_result(stick_super_string)
    n_stix = stick_super_string.length
    output_string = ""
    for i in NUMERAL_HASH do
      binding.pry
      if n_stix >= i[1]
        output_string += i[0]
        n_stix -= i[1]
      end
    end
  end

end