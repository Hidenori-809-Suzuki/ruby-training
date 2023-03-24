# (1) テキストファイルからデータを読み込んで次の処理を行うスクリプトを作成せよ
# (a) テキストの行数を数える。(b) テキストの単語数を数える。(c) テキストの文字数を数える
def wc(file) # 行数、単語数、文字数を出力するwcメソッド
  nline = nword = nchar = 0
  File.open(file){|io| io
    io.each{|line|
      words = line.split(/\s+/).reject{ |w| w.empty? }
      nline +=1
      nword += words.length
      nchar += line.length
    }
  }
  puts "lines = #{nline} words = #{nword} chars = #{nchar}"
end

wc(__FILE__)
