package com.dojo.Models;

public class QuarterbackStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int passAttempts;
    private int passYards;
    private int completions;
    private int passTouchdowns;
    private int Interceptions;
    private int rushYards;
    private int sacksTaken;
    private int sackYardsLost;
    private int passFirstDowns;
    private int yardsPerAttempt;
    private int pass20PlusYards;
    private int pass40PlusYards;
    private int passLongest;
    private int touchdowns;

    public QuarterbackStats(String playerId, String playerName, String team, int season, int passAttempts, int passYards, int completions, int passTouchdowns,
                            int Interceptions, int rushYards, int sacksTaken, int sackYardsLost, int passFirstDowns, int yardsPerAttempt, int pass20PlusYards,
                            int pass40PlusYards, int passLongest, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.passAttempts = passAttempts;
        this.passYards = passYards;
        this.completions = completions;
        this.passTouchdowns = passTouchdowns;
        this.Interceptions = Interceptions;
        this.rushYards = rushYards;
        this.sacksTaken = sacksTaken;
        this.sackYardsLost = sackYardsLost;
        this.passFirstDowns = passFirstDowns;
        this.yardsPerAttempt = yardsPerAttempt;
        this.pass20PlusYards = pass20PlusYards;
        this.pass40PlusYards = pass40PlusYards;
        this.passLongest = passLongest;
        this.touchdowns = touchdowns;
    }


    public QuarterbackStats() {}

    public int getCompletions() {
        return completions;
    }

    public void setCompletions(int completions) {
        this.completions = completions;
    }

    public int getPassTouchdowns() {
        return passTouchdowns;
    }

    public void setPassTouchdowns(int passTouchdowns) {
        this.passTouchdowns = passTouchdowns;
    }

    public int getInterceptions() {
        return Interceptions;
    }

    public void setInterceptions(int interceptions) {
        Interceptions = interceptions;
    }

    public int getSacksTaken() {
        return sacksTaken;
    }

    public void setSacksTaken(int sacksTaken) {
        this.sacksTaken = sacksTaken;
    }

    public int getSackYardsLost() {
        return sackYardsLost;
    }

    public void setSackYardsLost(int sackYardsLost) {
        this.sackYardsLost = sackYardsLost;
    }

    public int getPassFirstDowns() {
        return passFirstDowns;
    }

    public void setPassFirstDowns(int passFirstDowns) {
        this.passFirstDowns = passFirstDowns;
    }

    public int getYardsPerAttempt() {
        return yardsPerAttempt;
    }

    public void setYardsPerAttempt(int yardsPerAttempt) {
        this.yardsPerAttempt = yardsPerAttempt;
    }

    public int getPass20PlusYards() {
        return pass20PlusYards;
    }

    public void setPass20PlusYards(int pass20PlusYards) {
        this.pass20PlusYards = pass20PlusYards;
    }

    public int getPass40PlusYards() {
        return pass40PlusYards;
    }

    public void setPass40PlusYards(int pass40PlusYards) {
        this.pass40PlusYards = pass40PlusYards;
    }

    public int getPassLongest() {
        return passLongest;
    }

    public void setPassLongest(int passLongest) {
        this.passLongest = passLongest;
    }

    public String getPlayerId() {
        return playerId;
    }

    public void setPlayerId(String playerId) {
        this.playerId = playerId;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public int getSeason() {
        return season;
    }

    public void setSeason(int season) {
        this.season = season;
    }

    public int getPassYards() {
        return passYards;
    }

    public void setPassYards(int passYards) {
        this.passYards = passYards;
    }

    public int getPassAttempts() {
        return passAttempts;
    }

    public void setPassAttempts(int pass_attempts) {
        this.passAttempts = pass_attempts;
    }

    public int getRushYards() {
        return rushYards;
    }

    public void setRushYards(int rushYards) {
        this.rushYards = rushYards;
    }

    public int getSacked() {
        return sacksTaken;
    }

    public void setSacked(int sacked) {
        this.sacksTaken = sacked;
    }

    public int getTouchdowns() {
        return touchdowns;
    }

    public void setTouchdowns(int touchdowns) {
        this.touchdowns = touchdowns;
    }

}
