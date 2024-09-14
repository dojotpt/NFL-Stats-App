package com.dojo.Models;

public class RunningBackStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int rushYards;
    private int receptions;
    private int touchdowns;

    public RunningBackStats(int touchdowns, int receptions, int rushYards, int season, String team, String playerName, String playerId) {
        this.touchdowns = touchdowns;
        this.receptions = receptions;
        this.rushYards = rushYards;
        this.season = season;
        this.team = team;
        this.playerName = playerName;
        this.playerId = playerId;
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

    public int getRushYards() {
        return rushYards;
    }

    public void setRushYards(int rushYards) {
        this.rushYards = rushYards;
    }

    public int getReceptions() {
        return receptions;
    }

    public void setReceptions(int receptions) {
        this.receptions = receptions;
    }

    public int getTouchdowns() {
        return touchdowns;
    }

    public void setTouchdowns(int touchdowns) {
        this.touchdowns = touchdowns;
    }
}
