puts 'Createing todos...'

# 適当なTOdoを5つ作成
5.times do |i|
    Todo.create(title: "Todo#{i + 1}")
end

puts '...Finished!'