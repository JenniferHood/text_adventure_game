class User

  @@name = []

  define_method(:initialize) do |player|
    @player = player
  end

  define_method(:player) do
    @player
  end

  define_singleton_method(:all) do
    @@name
  end

  define_method(:save) do
    @@name.push(self)
  end
end
