package com.dojo.Models;

public class Player {
    private String playerId;
    private String playerName;
    private String team;
    private String position;
    private String season;

    public Player(String playerId, String playerName, String team, String position, String season) {
        this.playerId = playerId;
        this.playerName = playerName;
        this.team = team;
        this.position = position;
        this.season = season;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSeason() {
        return season;
    }

    public void setSeason(String season) {
        this.season = season;
    }
}
