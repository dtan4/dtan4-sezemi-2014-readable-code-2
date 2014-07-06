#!/usr/bin/env ruby

USAGE = <<-EOS
usage: ./recipe.rb <recipe data file>
EOS

def show_recipe_title(id, recipe_title)
  puts "#{id}: #{recipe_title}"
end

unless ARGV.length == 1
  STDERR.puts USAGE
  exit 1
end

recipe_data_file_name = ARGV[0]

unless File.exists?(recipe_data_file_name)
  STDERR.puts "#{recipe_data_file_name} is not found!"
  exit 1
end

open(recipe_data_file_name).each_with_index do |recipe_title, id|
  show_recipe_title(id, recipe_title)
end
