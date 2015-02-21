class Team < ActiveRecord::Base
  belongs_to :pool

  before_save :create_defaults, :update_nrr

  def update_nrr
    self.nrr = (self.runs_for/self.overs_for) - (self.runs_against/self.overs_against) unless self.overs_against==0.0 || overs_for==0.0
  end

  def create_defaults
    self.wins ||= 0
    self.losses ||= 0
    self.ties ||= 0
    self.points ||= 0
    self.runs_for ||= 0
    self.runs_against ||= 0
    self.overs_for ||= 0.0
    self.overs_against ||= 0.0
    self.nrr ||= 0.0
  end
end
