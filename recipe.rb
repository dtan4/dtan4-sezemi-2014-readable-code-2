#!/usr/bin/env ruby

USAGE = <<-EOS
usage: ./recipe.rb <recipe data file> [id]
EOS

def show_recipe_title(id, recipe_title)
  puts "#{id}: #{recipe_title}"
end

def show_all_recipes(recipe_data_file_name)
  open(recipe_data_file_name).each_with_index do |recipe_title, index|
    show_recipe_title(id_from_index(index), recipe_title)
  end
end

def show_recipe_with_id(recipe_data_file_name, id)
  recipe_title = recipe_title_from_id(recipe_data_file_name, id)
  show_recipe_title(id, recipe_title)
end

def id_from_index(index)
  # index は0始まりであるため、行番号（1始まり）と対応させるために +1 する
  index + 1
end

def index_from_id(id)
  id - 1
end

def recipe_title_from_id(recipe_data_file_name, id)
  open(recipe_data_file_name).read.lines[index_from_id(id)]
end


unless (ARGV.length == 1) || (ARGV.length == 2)
  STDERR.puts USAGE
  exit 1
end

recipe_data_file_name = ARGV[0]

unless File.exists?(recipe_data_file_name)
  STDERR.puts "#{recipe_data_file_name} is not found!"
  exit 1
end

id_to_show = ARGV[1].to_i if ARGV[1]

if id_to_show
  show_recipe_with_id(recipe_data_file_name, id_to_show)
else
  show_all_recipes(recipe_data_file_name)
end
