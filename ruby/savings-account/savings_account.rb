module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when 0..999.999
      0.5
    when 1000.0..4_999.999
      1.621
    when -152_964.231..0.000_1
      3.213
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    return 0 if balance == 0
    (balance * interest_rate(balance) /100) + balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0
    while  current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      year += 1
    end
    year

  end
end
