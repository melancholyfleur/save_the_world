class Passion < ActiveRecord::Base
  has_many :projects
  has_many :passion_resources
end
