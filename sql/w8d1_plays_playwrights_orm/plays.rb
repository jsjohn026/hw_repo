require 'sqlite3'
require 'singleton' #ensures we only have one instance of database

class PlayDBConnection < SQLite3::Database 
  #creates a new instance of Database class
  include Singleton

  def initialize
    super('plays.db') #pass in plays.db to parent init method
    self.type_translation = true 
    #sets property ensure we get same data type as what we pass in
    self.results_as_hash = true #returns data in a hash
  end
end

class Play
  attr_accessor :id, :title, :year, :playwright_id

  def self.all #shows every entry in play db
    data = PlayDBConnection.instance.execute("SELECT * FROM plays") 
      #.instance just gets us the db
      #pulls all info out & returns an array of hashes
    data.map { |datum| Play.new(datum) } 
      #changes each hash into a new instance of our table with all columns (as datum)
  end

  def self.find_by_title(title)
  end

  def self.find_by_playwright(name)

  end

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @year = options['year']
    @playwright_id = options['playwright_id']
  end

  def create #saves new instance into db
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id)
      INSERT INTO
        plays (title, year, playwright_id)
      VALUES
        (?, ?, ?)
    SQL
      #question marks protects from sql injection attacks such as: 
      # playwright_id = "3; DROP TABLE plays"
      #question marks sanitize the user provided arguments
    self.id = PlayDBConnection.instance.last_insert_row_id
      #.last_insert_row_id gets the id of the last row inserted into db
  end

  def update
    raise "#{self} not in database" unless self.id
    PlayDBConnection.instance.execute(<<-SQL, self.title, self.year, self.playwright_id, self.id)
      UPDATE
        plays
      SET
        title = ?, year = ?, playwright_id = ?
      WHERE
        id = ?
    SQL
  end
end

class Playwright 
  attr_accessor :id, :name, :birth_year

  def self.all
  end

  def find_by_name(name)
  end

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @birth_year = options['birth_year']
  end

end