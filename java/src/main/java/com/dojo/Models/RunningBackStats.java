package com.dojo.Models;

public class RunningBackStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int rushYards;
    private int rushAttempts;
    private int rush_touchdowns;
    private int rush20Plus;
    private int rush40Plus;
    private int rushLongest;
    private int firstDowns;
    private int fumbles;
    private int receptions;
    private int touchdowns;

    public RunningBackStats(String playerId, String playerName, String team, int season, int rushYards, int rushAttempts,
                            int rush_touchdowns, int rush20Plus, int rush40Plus, int rushLongest, int firstDowns, int fumbles, int receptions, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.rushYards = rushYards;
        this.rushAttempts = rushAttempts;
        this.rush_touchdowns = rush_touchdowns;
        this.rush20Plus = rush20Plus;
        this.rush40Plus = rush40Plus;
        this.rushLongest = rushLongest;
        this.firstDowns = firstDowns;
        this.fumbles = fumbles;
        this.receptions = receptions;
        this.touchdowns = touchdowns;
    }

    public RunningBackStats() {
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

    public int getRushAttempts() {
        return rushAttempts;
    }

    public void setRushAttempts(int rushAttempts) {
        this.rushAttempts = rushAttempts;
    }

    public int getRush_touchdowns() {
        return rush_touchdowns;
    }

    public void setRush_touchdowns(int rush_touchdowns) {
        this.rush_touchdowns = rush_touchdowns;
    }

    public int getRush20Plus() {
        return rush20Plus;
    }

    public void setRush20Plus(int rush20Plus) {
        this.rush20Plus = rush20Plus;
    }

    public int getRush40Plus() {
        return rush40Plus;
    }

    public void setRush40Plus(int rush40Plus) {
        this.rush40Plus = rush40Plus;
    }

    public int getRushLongest() {
        return rushLongest;
    }

    public void setRushLongest(int rushLongest) {
        this.rushLongest = rushLongest;
    }

    public int getFirstDowns() {
        return firstDowns;
    }

    public void setFirstDowns(int firstDowns) {
        this.firstDowns = firstDowns;
    }

    public int getFumbles() {
        return fumbles;
    }

    public void setFumbles(int fumbles) {
        this.fumbles = fumbles;
    }
}
