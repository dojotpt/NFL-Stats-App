package com.dojo.Models;

public class WideReceiverStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int rushYards;
    private int receptions;
    private int touchdowns;

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

    public WideReceiverStats(String playerId, String playerName, String team, int season, int rushYards, int receptions, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.rushYards = rushYards;
        this.receptions = receptions;
        this.touchdowns = touchdowns;
    }
}
