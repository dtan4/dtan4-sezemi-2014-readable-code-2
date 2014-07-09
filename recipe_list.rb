class RecipeList
  def initialize
    @recipe_list = []
  end

  def add(recipe)
    @recipe_list << recipe
  end

  def all
    @recipe_list
  end

  def find_by_id(id)
    @recipe_list.select { |recipe| recipe.id == id }.first
  end

  def find_by_title(title)
    @recipe_list.select { |recipe| recipe.title == title }
  end

  def read_from_file(recipe_data_file_name)
    open(recipe_data_file_name).each_with_index do |recipe_line, index|
      title, url = recipe_line.split(" ")
      @recipe_list << Recipe.new(id_from_index(index), title, url)
    end
  end

  private

  def id_from_index(index)
    # index は0始まりであるため、行番号（1始まり）と対応させるために +1 する
    index + 1
  end

  def index_from_id(id)
    id - 1
  end
end
