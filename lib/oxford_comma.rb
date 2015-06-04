def oxford_comma(array)
   if array.length == 1 # need to use the ==...
      outcome = array[0] 
    elsif array.length == 2
      outcome = array[0..1].join(" and ")
    else
      array_length_less_one = array.length - 2 
      # this is sort a mind**** because I am subtracting 1 from the length and then subtracting another 1 to account for index
      outcome = [array[0..array_length_less_one].join(", "), array.last].join(", and ")
    end
  # array[0..-2].join(" and")
  outcome
end

# make two arrays of length total - 1 and the last one and then merge them with a comma in between the last ones and the rest

# def oxford_comma(array)
#   if array.length == 1 # need to use the ==...
#      array[0] 
#    elsif array.length == 2
#      array[0..1].join(" and ")
#    else
      # this is sort a mind**** because I am subtracting 1 from the length and then subtracting another 1 to account for index
#      last_part = array.pop + #{ and}
       # array

#    end
# end