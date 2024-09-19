package com.dojo.Models;

public class TightEndStats {
    private String playerId;
    private String playerName;
    private String team;
    private int season;
    private int receivingYards;
    private int receiving_20_plus;
    private int receiving_40_plus;
    private int receiving_longest;
    private int receiving_first_downs;
    private int fumbles;
    private int receiving_yac;
    private int receiving_targets;
    private int receptions;
    private int touchdowns;

    public TightEndStats(String playerId, String playerName, String team, int season, int receivingYards,
                         int receiving_20_plus, int receiving_40_plus, int receiving_longest, int receiving_first_downs,
                         int fumbles, int receiving_yac, int receiving_targets, int receptions, int touchdowns) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.season = season;
        this.receivingYards = receivingYards;
        this.receiving_20_plus = receiving_20_plus;
        this.receiving_40_plus = receiving_40_plus;
        this.receiving_longest = receiving_longest;
        this.receiving_first_downs = receiving_first_downs;
        this.fumbles = fumbles;
        this.receiving_yac = receiving_yac;
        this.receiving_targets = receiving_targets;
        this.receptions = receptions;
        this.touchdowns = touchdowns;
    }

    public TightEndStats() {
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

    public int getReceiving20Plus() {
        return receiving_20_plus;
    }

    public void setReceiving20Plus(int receiving_20_plus) {
        this.receiving_20_plus = receiving_20_plus;
    }

    public int getReceiving40Plus() {
        return receiving_40_plus;
    }

    public void setReceiving40Plus(int receiving_40_plus) {
        this.receiving_40_plus = receiving_40_plus;
    }

    public int getReceivingLongest() {
        return receiving_longest;
    }

    public void setReceivingLongest(int receiving_longest) {
        this.receiving_longest = receiving_longest;
    }

    public int getFirstDowns() {
        return receiving_first_downs;
    }

    public void setFirstDowns(int receiving_first_downs) {
        this.receiving_first_downs = receiving_first_downs;
    }

    public int getFumbles() {
        return fumbles;
    }

    public void setFumbles(int fumbles) {
        this.fumbles = fumbles;
    }

    public int getReceivingYAC() {
        return receiving_yac;
    }

    public void setReceivingYAC(int receiving_yac) {
        this.receiving_yac = receiving_yac;
    }

    public int getReceivingTargets() {
        return receiving_targets;
    }

    public void setReceivingTargets(int receiving_targets) {
        this.receiving_targets = receiving_targets;
    }
}
