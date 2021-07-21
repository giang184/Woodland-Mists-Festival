class Stage
  attr_reader :id
  attr_accessor :name
  @@stages = {}
  @@total_rows = 0 

  def initialize(name, id) 
    @name = name
    @id = id || @@total_rows += 1  # We've added code to handle the id.
  end

  def self.all
    @@stages.values()
  end

  def save
    @@albums[self.id] = Album.new(self.name, self.id)
  end

  def == (stage_to_compare)
    self.name() == stage_to_compare.name()
  end

  def self.clear
    @@stages = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@stages[id]
  end

  def update(name)
    @name = name
  end

  def delete
    @@stages.delete(self.id)
  end

  def artists
    Artist.find_by_stage(self.id)
  end

end