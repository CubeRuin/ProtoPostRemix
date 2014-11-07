class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :comment, type: String

  belongs_to :student
end
