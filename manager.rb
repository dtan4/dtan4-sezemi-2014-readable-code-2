#!/usr/bin/env ruby

require_relative "./recipe.rb"
require_relative "./recipe_list.rb"
require_relative "./user.rb"

USAGE = <<-EOS
usage: ./recipe.rb <user name> <recipe data file> [id]
EOS


unless (ARGV.length == 2) || (ARGV.length == 3)
  STDERR.puts USAGE
  exit 1
end

user_name = ARGV[0]
user = User.new(user_name)

recipe_data_file_name = ARGV[1]

unless File.exists?(recipe_data_file_name)
  STDERR.puts "#{recipe_data_file_name} is not found!"
  exit 1
end

id_to_show = ARGV[2].to_i if ARGV[2]

recipe_list = RecipeList.new
recipe_list.read_from_file(recipe_data_file_name)

user.show_user_data

if id_to_show
  recipe_list.find_by_id(id_to_show).show_recipe_data
else
  recipe_list.all.each { |recipe| recipe.show_recipe_data }
end
