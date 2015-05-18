task :prepare do
  sh "cd gem1 && gem build gem1.gemspec"
  sh "cd gem2 && gem build gem2.gemspec"
  sh "cd gem3 && gem build gem3.gemspec"
  sh "cd gem4 && gem build gem4.gemspec"
  sh "rm -rf vendor"
  sh "mkdir -p vendor/cache"
  sh "mv gem*/*.gem vendor/cache/"
end

task :install => :prepare do
  ENV["BUNDLE_BUILD__GEM1"] = "--hello-first-gem"
  ENV["BUNDLE_BUILD__GEM2"] = "--hello-second-gem"
  ENV["BUNDLE_BUILD__GEM3"] = "--hello-third-gem"
  ENV["BUNDLE_BUILD__GEM4"] = "--hello-fourth-gem"
  sh "bundle install --local -j 2 --path vendor/bundle"
  sh "cat /tmp/gem1.txt"
  sh "cat /tmp/gem2.txt"
  sh "cat /tmp/gem3.txt"
  sh "cat /tmp/gem4.txt"
end
