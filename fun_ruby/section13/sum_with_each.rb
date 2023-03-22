ary1 = [1, 2, 3, 4, 5]
ary2 = [10, 20, 30, 40, 50]
ary3 = [100, 200, 300, 400, 500]

i = 0
result = []

while i < ary1.length
  result << ary1[i] + ary2[i] + ary3[i]
  i += 1
end

p result

# 『zipメソッド』を使用した場合

result = []
ary1.zip(ary2, ary3) do |a, b, c|
  result << a + b + c
end

p result
