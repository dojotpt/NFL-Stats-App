package com.dojo.DAO;

import com.dojo.Exception.DaoException;
import com.dojo.Models.RunningBackStats;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRunningBackStatsDao implements RunningBackStatsDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcRunningBackStatsDao(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }
    @Override
    public List<RunningBackStats> getRunningBackStats() {
        final List<RunningBackStats> runningBackStats = new ArrayList<>();
        final String sql = "SELECT player_id, player_name, team, season, rush_yards, rush_attempts, rush_touchdowns, " +
                "rush_20_plus, rush_40_plus, rush_longest, rush_first_downs, rush_fumbles\n" +
                "\tFROM public.runningback_stats;";
        try {
            final SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                runningBackStats.add(mapRowToRunningBackStats(results));
            }
        }catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("unable to connect to server or database", e);
        }
        return runningBackStats;
        }

    RunningBackStats mapRowToRunningBackStats(SqlRowSet rowSet) {
        RunningBackStats runningBackStats = new RunningBackStats();
        runningBackStats.setPlayerId(rowSet.getString("player_id"));
        runningBackStats.setPlayerName(rowSet.getString("player_name"));
        runningBackStats.setTeam(rowSet.getString("team"));
        runningBackStats.setSeason(rowSet.getInt("season"));
        runningBackStats.setRushYards(rowSet.getInt("rush_yards"));
        runningBackStats.setRushAttempts(rowSet.getInt("rush_attempts"));
        runningBackStats.setRush_touchdowns(rowSet.getInt("rush_touchdowns"));
        runningBackStats.setRush20Plus(rowSet.getInt("rush_20_plus"));
        runningBackStats.setRush40Plus(rowSet.getInt("rush_40_plus"));
        runningBackStats.setRushLongest(rowSet.getInt("rush_longest"));
        runningBackStats.setFirstDowns(rowSet.getInt("rush_first_downs"));
        runningBackStats.setFumbles(rowSet.getInt("rush_fumbles"));
        return runningBackStats;
    }
}
