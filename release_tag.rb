#!/usr/bin/env ruby
# eg. ruby release_tag.rb "/var/www/cletsimon.github.io" "v0.1"
# ARGV[0] is app_dir
# ARGV[1] is Release tag
Dir.chdir ARGV[0] do
  puts system "git checkout master"
  puts system "git tag " + ARGV[1]
  puts system "git push origin " + ARGV[1]
end
