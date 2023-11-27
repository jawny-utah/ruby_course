def calculator
  puts "Введіть перше число:"
  num1 = gets.to_f

  puts "Введіть операцію (+, -, *, /):"
  operator = gets.chomp

  puts "Введіть друге число:"
  num2 = gets.to_f

  case operator
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    if num2.zero?
      puts "Помилка: ділення на нуль"
      return
    else
      result = num1 / num2
    end
  else
    puts "Невірна операція"
    return
  end

  puts "Результат: #{result}"
end

calculator
