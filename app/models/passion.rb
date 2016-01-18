class Passion < ActiveRecord::Base
  has_many :projects, dependent: :destroy
  has_many :passion_resources, dependent: :destroy
end
