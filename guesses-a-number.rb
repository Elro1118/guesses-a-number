minimun = 1
maximum = 100
user_answer = nil


puts "Do you think a number between #{minimun} and #{maximum}? Answer (y/n):"
user_answer = gets.chomp

if  user_answer == "y"
  loop do
    guess_number = ((maximum - minimun)/2) + minimun

    puts "Is your number #{guess_number}? Answer (y/n):"
    user_answer = gets.chomp
    if user_answer == "y"
      puts "Your number is #{guess_number}!!!"
      break
    elsif user_answer == "n"
      puts "Is your number lower than #{guess_number}? Answer (y/n):"
      user_answer = gets.chomp
      if user_answer == "y"
        maximum = guess_number - 1
      elsif  user_answer == "n"
        minimun = guess_number + 1
      else
        puts "Try again with y or n!"
      end
    else
      puts "Try again with y or n!"
    end
  end
elsif user_answer == "n"
  puts "You don't want to play!"

else
  puts "Try again with y or n!"
end
