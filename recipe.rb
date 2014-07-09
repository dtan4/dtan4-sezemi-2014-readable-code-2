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
