module PoolsHelper
  def sorted_teams pool
    pool.teams.sort { |a, b| b.points <=> a.points }    
  end
end
