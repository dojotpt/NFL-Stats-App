package com.dojo.Models;

public class TightEndStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int passYards;
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

    public int getPassYards() {
        return passYards;
    }

    public void setPassYards(int passYards) {
        this.passYards = passYards;
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

    public TightEndStats(String playerId, String playerName, String team, int season, int passYards, int receptions, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.passYards = passYards;
        this.receptions = receptions;
        this.touchdowns = touchdowns;
    }
}
