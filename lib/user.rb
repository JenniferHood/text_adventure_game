class User

  @@player

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@player
  end

  define_method(:save) do
    @@player = (self)
  end
end
