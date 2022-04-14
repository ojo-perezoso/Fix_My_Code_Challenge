###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size

    

    while !is_inserted &&  i < l do
      if result[i] < i_arg
          i += 1
      else
        aux = result[i - 1]
        result.insert(i - 1, i_arg)
        result[i] = aux
        is_inserted = true
      end
      result << i_arg if !is_inserted
      enddd
end

puts result
