#!/usr/bin/env ruby
require_relative 'app'
def main
  puts 'Welcome to School Library App 📚!'
  puts ''
  app = App.new
  app.run
end

main
