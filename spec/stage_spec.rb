require 'rspec'
require 'stage'

describe '#Stage' do

  describe('.all') do
    it("returns an empty array when there are no stages") do
      expect(Stage.all ).to(eq([]))
    end
  end

  describe('#save') do
  it("should save a stage into the festival") do
    stage1 = Stage.new("Ga-Zoinks", nil)
    stage1.save()
    expect(Stage.all).to(eq([stage1]))
    end
  end

  describe('#==') do
  it("is the same stage if it has the same attributes as another stage") do
    stage1 = Stage.new("Ga-Zoinks", nil)
    stage2 = Stage.new("Ga-Zoinks", nil)
    expect(stage2).to(eq(stage1))
    end
  end
end