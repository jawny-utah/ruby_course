def pig_latin_converter(sentence)
  words = sentence.split(/(\w+|[^\w\s])/).reject { |a| a == "" }

  pig_latin_words = words.map do |word|
    if word =~ /^[[:punct:]]$/ || word == " "
      word
    else
      word[1..-1] + word[0] + 'ay'
    end
  end

  pig_latin_sentence = pig_latin_words.join
  pig_latin_sentence.capitalize!
end

sentence = "Hello, world! This is a sample sentence."
result = pig_latin_converter(sentence)

puts "Pig Latin conversion: #{result}"
