def question(lower,upper)
  print lower
  print upper
  if (0..1000000).include?(lower) and (0..1000000).include?(upper)

    if upper < lower
      hold = lower
      lower = upper
      upper = hold
    end 

    answer = rand(lower...upper + 1)
    a = rand(answer + 1)
    b = answer - a
    sum = "#{a} + #{b} = ?"

    options = Array.new(3)
    options[3] = answer

    for i in 0...3
      options[i]=rand(lower...upper+1)
      while options[i] == answer
        options[i]=rand(lower...upper+1)
      end 
    end 

    options=options.shuffle
    aQuestion= Question.new(sum, options)
    #puts aQuestion.to_json
    return aQuestion.to_json
  else
    return "The limits you have entered are outside the possible range [0,1000000]"
  end

end