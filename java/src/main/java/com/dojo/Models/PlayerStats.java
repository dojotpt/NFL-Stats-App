package com.dojo.Models;

public class PlayerStats {

    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int passYards;
    private int rushYards;
    private int receptions;
    private int sacks;
    private int touchdowns;

    public PlayerStats(String playerId, String playerName, String team, int season, int passYards, int rushYards, int receptions, int sacks, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.passYards = passYards;
        this.rushYards = rushYards;
        this.receptions = receptions;
        this.sacks = sacks;
        this.touchdowns = touchdowns;
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

    public int getSacks() {
        return sacks;
    }

    public void setSacks(int sacks) {
        this.sacks = sacks;
    }

    public int getTouchdowns() {
        return touchdowns;
    }

    public void setTouchdowns(int touchdowns) {
        this.touchdowns = touchdowns;
    }
}
