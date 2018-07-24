
class Class

@account = {
  3321 => {
    :name => 'Volodymyr',
    :password => 'mypass',
    :balane => 422
    },
    5922 => {
    :name => 'Iryna',
    :password => 'ho#ll_§1',
    :balance => 5301
  }
}



puts "Please Enter Your Account Number:"
@acc = gets.chomp.to_i

if @acc == @account.keys[0] || @acc == account.keys[1]
  puts "Enter Your Password:"
    @pass = gets.chomp
      if @pass == @account[@acc][:password]
        puts "Hello, #{@account[@acc][:name]}"
      else 
      	puts "Wrong pass"
      end
else 
	puts "User not found"
end

def choose 
puts "Please Choose From the Following Options:
 1. Display Balance
 2. Withdraw
 3. Log Out"

@num = gets.chomp.to_i

case @num 
  when 1
    puts @account[@acc][:balance]
    return choose
  when 2 
    puts "Enter Amount You Wish to Withdraw:"
    sum = gets.chomp.to_i
      if sum > @account[@acc][:balance]
        puts "No money no honey"
      else 
        puts "New amount is #{@account[@acc][:balance] - sum}"
      end
  when 3 
    puts "Goodbye, #{@account[@acc][:name]}"
   
  end 
end

puts choose

end