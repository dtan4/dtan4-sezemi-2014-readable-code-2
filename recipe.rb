#!/usr/bin/env ruby

require_relative "./recipe_list.rb"

USAGE = <<-EOS
usage: ./recipe.rb <recipe data file> [id]
EOS

class Recipe
  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end

  def show_recipe_data(out = STDOUT)
    out.puts "#{@id}: #{@title} #{@url}"
  end
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

recipe_list = RecipeList.new
recipe_list.read_from_file(recipe_data_file_name)

if id_to_show
  recipe_list.find_by_id(id_to_show).show_recipe_data
else
  recipe_list.all.each { |recipe| recipe.show_recipe_data }
end
