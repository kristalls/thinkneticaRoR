puts "Введите три числа"
print "День:"
day = gets.to_i
print "Месяц:"
month = gets.to_i
print "Год:"
year = gets.to_i
day_count = 0
count = 0
count_days_in_months = 0
i = 0

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 
  months[1] = 29
end

if month > 1 
  count = month - 1
else
  puts "Это #{day} день в #{year} году."
  exit
end

count.times do |i|
    
  count_days_in_months = count_days_in_months + months[i]
  i = i + 1
    
end

day_count = count_days_in_months + day

puts "Порядковый номер даты: #{day_count}"


