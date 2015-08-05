

class String
  define_method(:palindrome) do
    initial_word = self
    initial_array = initial_word.split("")
    reverse_array = []
    initial_array.each() do |letter|
      reverse_array.unshift(letter)
    end
    reverse_word = reverse_array.join()
    if initial_word == reverse_word
      "p-p-p-palindrome!"
    else
      "wah-waaahhh..."
    end
  end
end
