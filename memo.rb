require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s.chomp
    
    puts "メモしたい内容を記入してください"
    puts "完了したら Ctrl+D を押してください"
    
    file_text = STDIN.read.chomp
    
    CSV.open("#{file_name}.csv", "w") do |csv|
     csv.puts ["#{file_text}"]
    end
end

if memo_type == 2
    puts "編集したいファイルについて、拡張子を除いたファイル名を入力してください"
    file_name = gets.to_s.chomo
    
    puts "指定した以下のCSVファイルについて、編集してください"
    puts CSV.read("#{file_name}.csv")
    puts "編集が完了したら Ctrl+D を押します"
    
    file_text = STDIN.read.chomp
    
    CSV.open("#{file_name}.csv", "w") do |csv|
     csv.puts ["#{file_text}"]
    end
end

