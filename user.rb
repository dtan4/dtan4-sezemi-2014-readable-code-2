class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def show_user_data(out = STDOUT)
    out.puts("ユーザー名: #{@name}")
  end
end
