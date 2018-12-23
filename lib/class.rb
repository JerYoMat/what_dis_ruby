class Classy

  attr_accessor :name, :meth_ods

  @@all = []
  @@empties = []

  def initialize(name)
    @name = name
    @meth_ods = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.empties
    @@empties
  end

  def self.create_from_collection(list_of_classes)
    list_of_classes.each do |class_name|
        Classy.new(class_name)
    end
  end

  def self.create_methods_for_all_classes

    self.all.each do |ind_class|

        ind_class.create_methods_for_instance_of_class
    end
  end


  def create_methods_for_instance_of_class

     method_names = Scraper.scrape_methods(@name)
     method_contents = Scraper.scrape_method_content_from_class_page(@name)
     index_placeholder = 0
     method_contents.each do |content|

      new_method = Meth.new(method_names[index_placeholder], content[:headings].split('click to toggle source'), content[:full_description], content[:mini_description], content[:code], self)
       self.meth_ods << new_method
       index_placeholder += 1
    end
    if self.meth_ods == []
      @@empties << self.name
    end
  end

  def self.remove_empties
    Classy.all.delete_if do |c|
       @@empties.include?(c.name)
    end
    Classy.all
  end

end
