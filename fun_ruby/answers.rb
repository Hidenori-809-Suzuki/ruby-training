# (1) 華氏 = 摂氏 X 9 ÷ 5 + 32
# 摂氏温度を華氏温度に変換するメソッド 'cels_to_fahr' を定義せよ
  def cels2fahr(cels)
    return cels * 9.0 / 5.0 + 32.0
  end
# 途中の計算の結果が浮動小数点数になるように、9と5はそれぞれ9.0や5.0にしている
# celsが整数だった場合、正しく計算されない(5で割るところの結果がIntegerになってしまうため)


# (2) 華氏温度を摂氏温度に変換する。また、摂氏1度から摂氏100度まで1度きざみに華氏温度との対応を出力せよ
  def fahr2cels(fahr)
    return (fahr.to_f - 32) * 5.0 / 9.0
  end

  1.upto(100) do |i|
    print i, " ", fahr2cels(i), "\n"
  end


# (3) サイコロを振って出た目(1から6までのランダムな整数)を返すメソッド dice を定義せよ
  def dice
    return Random.rand(6) + 1
  end
# Random.rand(6)とした場合は、0から5の値が返るので結果に1を足している


# (4) 10個のサイコロを振って出た目の合計を返すメソッド dice10 を定義せよ
  def dice
    return Random.rand(6) + 1
  end

  def dice10
    ret = 0
    10.times do
      ret += dice
    end
    ret
  end


# (5) 整数numが素数であるかどうかを調べるメソッド prime?(num) を定義せよ
  def prime?(num)
    return false if num < 2
    2.upto(Math.sqrt(num)) do |i|
      if num % i == 0
        return false
      end
    end
    return true
  end

  1.upto(10) do |n|
    puts n if prime?(n)
  end
