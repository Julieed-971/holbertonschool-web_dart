int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  List<int> teamAShots = teamA.values.toList();
  int scoreTeamA = teamAShots[0] + teamAShots[1] * 2 + teamAShots[2] * 3;

  List<int> teamBShots = teamB.values.toList();
  int scoreTeamB = teamBShots[0] + teamBShots[1] * 2 + teamBShots[2] * 3;
 
  if (scoreTeamA > scoreTeamB) {
    return 1;
  }
  else if (scoreTeamA < scoreTeamB) {
    return 2;
  }
  else {
    return 0;
  }
}
