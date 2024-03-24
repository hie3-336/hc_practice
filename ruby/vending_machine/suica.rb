class Suica
  DEPOSIT = 500

  def initialize
    @charge_amount = DEPOSIT
  end

  def charge(charged_money)
    raise 'please charge at least 100 yen.' if charged_money < 100

    @charge_amount += charged_money
  end

  def spend(spend_money)
    @charge_amount -= spend_money
  end

  def check_charge_amount
    @charge_amount
  end
end
