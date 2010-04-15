class Result < ActiveRecord::Base
  belongs_to :match
  belongs_to :team
  validates_presence_of :match_id, :team_id
  validates_uniqueness_of :team_id, :scope => :match_id, :message=>'Los equipos deben ser diferentes'
  #validates_numericality_of :goals, :greater_than_or_equal_to => 0

end

