# (1) 1から100までの整数が昇順に並ぶ配列aを作る
# 空の配列をつくって、1から100までの値を格納する
# a = []
# 100.times{|i| a[i] = i + 1}

# p a
# 範囲オブジェクトのto_aメソッドを使う
# a = (1..100).to_a

# p a


# (2) (1)の配列の各要素をすべて100倍した、新しい配列a2を作成する
# a = (1..100).to_a # 配列を作る

# a2 = a.collect{ |i| i * 100 } # 配列のすべての要素を100倍
# p a2

# a.collect!{ |i| i * 100 }
# p a


# (3) (1)の配列から3の倍数だけを取り出した配列a3を作成する
# a = (1..100).to_a # 配列を作る
# p a

# a3 = a.reject{ |i| i % 3 !=0 } # aryから3の倍数だけを取り出す
# p a3

# a4 = a.select{ |i| i % 3 ==0 } # 条件に当てはまるものだけを返す
# p a4

# a.reject!{ |i| i % 3 != 0 } # aryから3の倍数以外を削除
# p a

# (4) (1)の配列を逆順にならべかえる
# a = (1..100).to_a # 配列を作る

# a2 = a.reverse
# p a2

# (7) 数値からなる配列nums1とnums2に対して、それらの個々の要素を足し合わせた要素からなる配列を返すメソッドを定義する
def sum_array(ary1, ary2)
  result = Array.new
  i = 0
  ary1.each do |elem1|
    result << elem1 + ary2[i]
    i += 1
  end
  return result
end

p sum_array([1, 2, 3], [4, 6, 8])
