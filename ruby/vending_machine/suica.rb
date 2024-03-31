# スイカに関する処理を取り扱うクラス
class Suica
  # 初期チャージ金額は500円
  DEPOSIT = 500

  def initialize
    @charge_amount = DEPOSIT
  end

  # スイカをチャージする処理
  def charge(charged_money)
    raise 'please charge at least 100 yen.' if charged_money < 100

    @charge_amount += charged_money
  end

  # スイカの金額を消費する処理
  def spend(spend_money)
    @charge_amount -= spend_money
  end

  # スイカのチャージ金額を確認する処理
  def check_charge_amount
    charge_amount
  end

  private

  # スイカのチャージ金額を取得する処理(private)
  def charge_amount
    @charge_amount
  end
end
