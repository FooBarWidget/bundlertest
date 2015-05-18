puts "gem2: #{ARGV.inspect}"

File.open("Makefile", "w") do |f|
  f.puts "all:"
  f.puts "\ttrue"
  f.puts "clean:"
  f.puts "\ttrue"
end
