module StandingsHelper

    def standings
        full = Hash.new
        Game.all.each do |g|
        
            if not full.key? g.winner
              full[g.winner] = { "games" => 0, "wins" => 0, "pts" => 0 }
            end

            full[g.winner]["games"] += 1
            full[g.winner]["wins"]  += 1
            full[g.winner]["pts"]  += g.w_score
            
            if not full.key? g.loser
              full[g.loser] = { "games" => 0, "wins" => 0, "pts" => 0 }
            end
            full[g.loser]["games"]  += 1
            full[g.loser]["pts"]  += g.l_score
            
        end
        full.sort_by { |k, v| v["wins"].to_f / -v["games"] }
          
            
    end
end
