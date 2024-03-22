class Suica
  DEPOSIT = 500

  def initialize
    @charge_amount = DEPOSIT
  end

  def charge(charged_money)
    @charge_amount += charged_money
  end

  def check_charge_amount
    @charge_amount
  end
end
