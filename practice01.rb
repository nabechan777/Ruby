#! usr/bin/env ruby

if __FILE__ == $0
    ans = rand(10)
    loop do
        entered = gets.to_i()
        if entered == ans
            puts 'Correct!!'
            break
        elsif entered > ans
            puts 'More Small!!'
        elsif entered < ans
            puts 'More Big!!'
        end
    end
end
