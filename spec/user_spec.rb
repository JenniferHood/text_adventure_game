require('rspec')
require('user')

describe(User) do
  describe('#player') do
    it('player enters their name') do
      test_user = User.new("Joy")
      expect(test_user.player()).to(eq("Joy"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(User.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('program saves players name') do
      test_user = User.new("Joy")
      test_user.save()
      expect(User.all()).to(eq([test_user]))
    end
  end
end
