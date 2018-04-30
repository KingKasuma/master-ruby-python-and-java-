puts "Enter in your exam score"
score = gets.chomp.to_i

result = case score
  when 0..40 then "Fail"
  when 41..60 then "Pass"
  when 61..70 then "Pass with merit"
  when 71..100 then "You're a genius"
  else "Don't know what you're talking about"
end

puts result

# 1. Use case to re-work the calculator logic
# 2. Assing a grade
#0 - 40 - F
#41 - 55 - D
#56 - 70 - C
#71 - 85 - B
#86 - 100 - A
