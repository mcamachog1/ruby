class Team
    attr_accessor(:name, :score)
    
    def initialize(name="", score=0)
        @name = name
        @score = score
    end
    
end

class Match

    def initialize(team1, team2)
        @team1 = team1
        @team2 = team2
    end

    def result(score1, score2)
        if score1>score2
            return {@team1 => 3, @team2 => 0}
        elsif score1<score2
            return {@team1 => 0, @team2 => 3}
        else 
            return {@team1 => 1, @team2 => 1}
        end
    end

end

class Tournament
    def initialize()
        @positionTable = Hash.new()

        @teamA = Team.new("team A",0)
        @teamB = Team.new("team B",0)
        @teamC = Team.new("team C",0)
        @teamD = Team.new("team D",0)
        
        @positionTable[@teamA]=0
        @positionTable[@teamB]=0
        @positionTable[@teamC]=0
        @positionTable[@teamD]=0

        @match1 = Match.new(@teamA,@teamB)
        result1 = @match1.result(3,1)
        @positionTable[@teamA]+=result1[@teamA]
        @positionTable[@teamB]+=result1[@teamB]

        @match2 = Match.new(@teamC,@teamD)
        result2 = @match2.result(0,0)
        @positionTable[@teamC]+=result2[@teamC]
        @positionTable[@teamD]+=result2[@teamD]

        @match3 = Match.new(@teamA,@teamC)
        result3 = @match3.result(1,1)
        @positionTable[@teamA]+=result3[@teamA]
        @positionTable[@teamC]+=result3[@teamC]

        @match4 = Match.new(@teamB,@teamD)
        result4 = @match4.result(2,3)
        @positionTable[@teamB]+=result4[@teamB]
        @positionTable[@teamD]+=result4[@teamD]

        @match5 = Match.new(@teamA,@teamD)
        result5 = @match5.result(2,1)
        @positionTable[@teamA]+=result5[@teamA]
        @positionTable[@teamD]+=result5[@teamD]

        @match6 = Match.new(@teamB,@teamC)
        result6 = @match6.result(3,1)
        @positionTable[@teamB]+=result6[@teamB]
        @positionTable[@teamC]+=result6[@teamC]

        puts  @positionTable.values.reverse!
    end
end

tournament = Tournament.new()

#team1 = Team.new();
#puts team1.name;
