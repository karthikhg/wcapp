class Match < ActiveRecord::Base

  before_save :create_defaults, on: :create
  before_save :update_result, :on => :create

  def create_defaults
    self.team1_total ||= 0
    self.team2_total ||= 0
    self.team1_overs ||= 0.0
    self.team2_overs ||= 0.0
    self.team1_wickets ||= 0
    self.team2_wickets ||= 0
  end

  def update_result
    return if self.id.present?
    team1 = Team.find self.team1_id
    team2 = Team.find self.team2_id

    team1.runs_for += self.team1_total
    team2.runs_for += self.team2_total
    team2.runs_against += self.team1_total
    team1.runs_against += self.team2_total

    if self.tie
      team1.ties += 1
      team2.ties += 1
      team1.points += 1
      team2.points += 1
      team1.overs_for += self.team1_overs
      team2.overs_for += self.team2_overs
      team2.overs_against += self.team1_overs
      team1.overs_against += self.team2_overs
    elsif self.team1_total > self.team2_total
      self.winner = team1.id
      team1.wins += 1
      team2.losses += 1
      team1.points += 3
      team1.overs_for += self.team1_overs
      team1.overs_against += 50
      team2.overs_for += 50
      team2.overs_against += self.team1_overs
    else
      self.winner = team2.id
      team2.wins += 1
      team1.losses += 1
      team2.points += 3
      team2.overs_for += self.team2_overs
      team2.overs_against += 50
      team1.overs_for += 50
      team1.overs_against += self.team2_overs
    end

    team1.save
    team2.save
  end

end
