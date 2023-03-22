# (1) "Ruby is an object oriented programming language"という文字列があります。
# この文字列に含まれる各単語を要素とする配列を作ってください
str = "Ruby is an object oriented programming language"
ary = str.split
p ary

# (2) (1)の配列をアルファベット順にソート
p ary.sort


# (3) (2)の配列を大文字と小文字の区別をせずにアルファベット順にソート
p ary.sort_by{ |s| s.downcase }


# (4) 表示させる形式を変更する
str = "Ruby is an object oriented programming language"
count = Hash.new
str.each_char do |c|
  count[c] = 0 unless count[c]
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end
