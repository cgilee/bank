class Session

  def initialize
     get_name
     pull_balance
     welcome
     show_balance
     instructions
     transaction
     goodbye
  end

  def get_name
      puts "WHAT IS YOUR NAME?"
  end

  def pull_balance
      @name=gets.chomp
      @file="data/#{@name}.balance"
      @balance=File.exists?(@file) ? IO.read(@file).to_i : 0
  end

  def welcome
      puts "Welcome, #{@name}!"
  end

  def show_balance  
      puts "--"*21
      puts "Your balance is $#{@balance}"
      puts "--"*21
  end

  def instructions
      puts "Type a positive or negative number to DEPOSIT or WITHDRAW from your account."
      puts " Type 'end' to exit."
  end

  def transaction
      until @value==0
      @value=gets.chomp.to_i
      @balance=@balance+@value
        puts "  Your new balance is $#{@balance}."
      end
  end

  def goodbye 
      IO.write@file, @balance
      puts "--"*21
     puts"Goodbye, #{@name}!!"
  end

end

Session.new
