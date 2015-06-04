# make two arrays of length total - 1 and the last one and then merge them with a comma in between the last ones and the rest

# Rose's solution:
# def oxford_comma(array)
#   if array.length == 1 
#      array[0] 
#    elsif array.length == 2
#      array[0..1].join(" and ")
#    else
      # this is sort a mind**** because I am subtracting 1 from the length and then subtracting another 1 to account for index
#      last_part = " and" + array.pop
#      array[0..1].join(" and ") + #{last_part}
#    end
# end

# Ezra's solution:
# def oxford_comma(array)
# if array.length == 1
#   return "#{array[0]}"
# elsif array.length == 2
#   return "#{array[0]} and #{array[1]}"
#  else
#   return "#{array[0..-2].join(", ")}, and #{array.last}"
# end
# end

# Greg's solution:
# def oxford_comma(array)
# if array.length <= 2
# array.join(" and ")
# else
#   last_word = array.pop
#   formated_word = "and #{last_word}"
#   array.push(formated_word)
#   array.join(", ")
# end
# end

# Joint best solution:
# def oxford_comma(array)
# if array.length <= 2
#   array.join(" and ")
# else
#   return "#{array[0..-2].join(", ")}, and #{array.last}"
# end
# end

# Exra's ternary solution:
# def oxford_comma(array)
#  array.length <= 2 ? array.join(" and ") : "#{array[0..-2].join(", ")}, and #{array.last}" # or array[-1]
# end

def oxford_comma(array)
    if array.length == 1 # need to use the ==...
      outcome = array[0] 
    elsif array.length == 2
      outcome = array[0..1].join(" and ") # OR array[0] + array [1]
    else
      array_length_less_one = array.length - 2 
      # this is sort a mind**** because I am subtracting 1 from the length and then subtracting another 1 to account for index
      outcome = [array[0..array_length_less_one].join(", "), array.last].join(", and ")
    end
  outcome
end

