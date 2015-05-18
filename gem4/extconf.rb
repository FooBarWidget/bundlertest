puts " -------> gem4: #{ARGV.inspect}"

File.open("/tmp/gem4.txt", "w") do |f|
  f.puts(ARGV.inspect)
end

File.open("Makefile", "w") do |f|
  f.puts "all:"
  f.puts "\ttrue"
  f.puts "install:"
  f.puts "\ttrue"
  f.puts "clean:"
  f.puts "\ttrue"
end
