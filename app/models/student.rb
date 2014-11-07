class Student
  include Mongoid::Document
  field :name, type: String
  field :profile, type: String

  has_many :projects
end
