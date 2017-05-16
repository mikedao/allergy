class Allergy

  ALLERGIES = ["eggs",
               "peanuts",
               "shellfish",
               "strawberries",
               "tomatoes",
               "chocolate",
               "pollen",
               "cats"]

  def convert(number)
    binary_array = format_number(number)
    get_allergies(binary_array)
  end


  def format_number(number)
    number.to_s(2).reverse.ljust(8,"0").chars
  end

  def get_allergies(binary_array)
    binary_array.map.with_index do |num, index|
      if num == "1"
        ALLERGIES[index]
      end
    end.compact
  end
end


