puts "Введите три числа"
print "День:"
day = gets.to_i
print "Месяц:"
month = gets.to_i
print "Год:"
year = gets.to_i
month_count = 0


months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 
  months[1] = 29
end

if month > 1 
  month_count = month - 1
else
  puts "Это #{day} день в #{year} году."
  exit
end

serial_day = day + months[0..month_count].sum

puts "Порядковый номер дня: #{serial_day}"



