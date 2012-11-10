class Quote < ActiveRecord::Base
  attr_accessible :quote, :teacher, :posted_by, :verification, :source
  
  validates_presence_of :quote
  validates_presence_of :teacher
  validates_presence_of :source
  validates_presence_of :posted_by
  
end
