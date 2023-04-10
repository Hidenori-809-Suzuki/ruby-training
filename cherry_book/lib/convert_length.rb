# メートル(m)、フィート(ft)、インチ(in)の単位を相互に変換する
# 第1引数に変換元の長さ（数値）、第2引数に変換元の単位、第3引数に変換後の単位を指定する
# メソッドの戻り値は変換後の長さ（数値）とする。端数が出る場合は、小数第3位で四捨五入する
UNITS = {m: 1.0, ft: 3.28, in: 39.37}
def convert_length(length, from: :m, to: :in)
  # 39.37
  (length / UNITS[from] * UNITS[to]).round(2)
end
