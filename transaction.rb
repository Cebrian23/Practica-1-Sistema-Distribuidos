def get_transactions_data
  transactions_block ||= []
  blank_transaction = Hash[from: '', to: '',
                           what: '', qty: '']
  loop do
    puts ''
    puts 'Enter your name for the new transaction'
    from = gets.chomp
    puts ''
    puts 'What do you want to send ?'
    what = gets.chomp
    puts ''
    puts 'How much quantity ?'
    qty  = gets.chomp
    puts ''
    puts 'Who do you want to send it to ?'
    to 	 = gets.chomp
    puts ''
    puts 'Thanks for using us'

    transaction = Hash[from: "#{from}", to: "#{to}",
                       what: "#{what}", qty: "#{qty}"]
    transactions_block << transaction

    puts ''
    puts 'Do you want to make another transaction for this block ? (Y/n/x/z)'
    new_transaction = gets.chomp.downcase

    if new_transaction == 'y'
      self
    elsif new_transaction == 'x'
      launcher
    elsif new_transaction == 'z'
      launcher3
    else
      return transactions_block
      break
    end
  end
end
