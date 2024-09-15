package com.dojo.Models;

public class WideReceiverStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int receptions;
    private int receivingYards;
    private int receivingTouchdowns;
    private int receivingYards20Plus;
    private int receivingYards40plus;
    private int receivingYardsLongest;
    private int firstDowns;
    private int fumbles;
    private int receivingYAC;
    private int targets;
    private int touchdowns;

    public WideReceiverStats(String playerId, String playerName, String team, int season, int receptions,
                             int receivingYards, int receivingTouchdowns, int receivingYards20Plus, int receivingYards40plus, int receivingYardsLongest, int firstDowns, int fumbles, int receivingYAC, int targets, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.receptions = receptions;
        this.receivingYards = receivingYards;
        this.receivingTouchdowns = receivingTouchdowns;
        this.receivingYards20Plus = receivingYards20Plus;
        this.receivingYards40plus = receivingYards40plus;
        this.receivingYardsLongest = receivingYardsLongest;
        this.firstDowns = firstDowns;
        this.fumbles = fumbles;
        this.receivingYAC = receivingYAC;
        this.targets = targets;
        this.touchdowns = touchdowns;
    }

    public WideReceiverStats() {
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

    public int getReceivingYards() {
        return receivingYards;
    }

    public void setReceivingYards(int receivingYards) {
        this.receivingYards = receivingYards;
    }

    public int getReceivingTouchdowns() {
        return receivingTouchdowns;
    }

    public void setReceivingTouchdowns(int receivingTouchdowns) {
        this.receivingTouchdowns = receivingTouchdowns;
    }

    public int getReceivingYards20Plus() {
        return receivingYards20Plus;
    }

    public void setReceivingYards20Plus(int receivingYards20Plus) {
        this.receivingYards20Plus = receivingYards20Plus;
    }

    public int getReceivingYards40plus() {
        return receivingYards40plus;
    }

    public void setReceivingYards40plus(int receivingYards40plus) {
        this.receivingYards40plus = receivingYards40plus;
    }

    public int getReceivingYardsLongest() {
        return receivingYardsLongest;
    }

    public void setReceivingYardsLongest(int receivingYardsLongest) {
        this.receivingYardsLongest = receivingYardsLongest;
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

    public int getReceivingYAC() {
        return receivingYAC;
    }

    public void setReceivingYAC(int receivingYAC) {
        this.receivingYAC = receivingYAC;
    }

    public int getTargets() {
        return targets;
    }

    public void setTargets(int targets) {
        this.targets = targets;
    }
}
