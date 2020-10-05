users = [{username: "daniel", password: "d1"},
         {username: "serhat", password: "s1"}]




def aut_users(username, password, list_of_users)
 list_of_users.each do |i|
    if i[:username] == username && i[:password] == password
      return i
    end
  end
else
    return "creditentials were not correct"
end

puts "Welcome to Authenticator"
25.times {print '-'}
puts 
puts "This will take input from the user and compare within Array"
attempt=1
# puts users
while attempt < 4 do
  puts "Username"
  usern= gets.chomp.downcase
  
  puts "Password"
  passw = gets.chomp.downcase
  authentication = aut_users(usern,passw,users)
  puts authentication
  puts "press n to quit"
  var = gets.chomp.downcase
  break if var== "n"
 
  attempt +=1
end

