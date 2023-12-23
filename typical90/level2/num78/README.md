# [078 - Easy Graph Problem（★2）](https://atcoder.jp/contests/typical90/tasks/typical90_bz)

# 解いた日付と結果
* my_anser1.rb : 12/23 : TLE  
* model_answer.rb : 12/22 : AC    

# 解法
* ai と bi　のうち大き方を抽出し新たに配列を作る
* 新たに作成した配列の要素のうち，重複の無い要素の数を出力する

# 学んだこと
* Array#tally
`
["a", "b", "c", "b"].tally  #=> {"a"=>1, "b"=>2, "c"=>1}

h = {}
[:a, :b, :c].tally(h)
[:a, :b, :d].tally(h)

p h # => {:a=>2, :b=>2, :c=>1, :d=>1}
`
* Hash#select
`
h = { "a" => 100, "b" => 200, "c" => 300 }
h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
h.select {|k,v| v < 200}  #=> {"a" => 100}
`
* Hash#keys
`
h1 = { "a" => 100, 2 => ["some"], :c => "c" }
p h1.keys           #=> ["a", 2, :c]
`
 

# これから深掘りするところ
* 

# 感想
* 今回の問題は知らないメソッドをたくさん駆使して解答することができた
* 別解がありそうなので記事を調べてみる
