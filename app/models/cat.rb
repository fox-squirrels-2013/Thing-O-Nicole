class Cat < ActiveRecord::Base
  validates_presence_of :name, message: 'Kitties need names, damnit!'
end