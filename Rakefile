file "vendor/cache/ok" => Dir["gem*/extconf.rb", "gem*/*.gemspec"] do
  sh "cd gem1 && gem build gem1.gemspec"
  sh "cd gem2 && gem build gem2.gemspec"
  sh "cd gem3 && gem build gem3.gemspec"
  sh "cd gem4 && gem build gem4.gemspec"
  sh "rm -rf vendor/cache"
  sh "mkdir -p vendor/cache"
  sh "mv gem*/*.gem vendor/cache/"
  sh "touch vendor/cache/ok"
end

def test_gem(number, substr)
  puts "Testing gem#{number}..."
  contents = File.read("/tmp/gem#{number}.txt")
  if !contents.include?(substr)
    abort "  --> fail!"
  end
end

task :install => "vendor/cache/ok" do
  ENV["BUNDLE_BUILD__GEM1"] = "--hello-first-gem"
  ENV["BUNDLE_BUILD__GEM2"] = "--hello-second-gem"
  ENV["BUNDLE_BUILD__GEM3"] = "--hello-third-gem"
  ENV["BUNDLE_BUILD__GEM4"] = "--hello-fourth-gem"
  sh "rm -rf vendor/bundle"
  sh "bundle install --local -j 4 --path vendor/bundle"
  test_gem(1, "first")
  test_gem(2, "second")
  test_gem(3, "third")
  test_gem(4, "fourth")
  puts "OK"
end
