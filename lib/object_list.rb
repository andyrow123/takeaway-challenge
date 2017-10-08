require './lib/object_list_printer'

class ObjectList
  attr_reader :objects

  def initialize(objects = [])
    @objects = objects
  end

  def add(object)
    fail 'Already exists in list' if found?(object)
    @objects << object
    'Success'
  end

  def remove(object)
    fail 'Not found in list' unless found?(object)
    @objects.delete(object)
    'Success'
  end

  def to_string(object_list_printer = ObjectListPrinter)
    object_list_printer.to_string(all)
  end

  def get(index)
    all[index]
  end

  private

  def found?(object)
    @objects.include?(object)
  end

  def all
    @objects
  end
end
