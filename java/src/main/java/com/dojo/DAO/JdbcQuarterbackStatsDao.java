package com.dojo.DAO;

import com.dojo.Exception.DaoException;
import com.dojo.Models.QuarterbackStats;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcQuarterbackStatsDao implements QuarterbackStatsDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcQuarterbackStatsDao(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }
    @Override
    public List<QuarterbackStats> getQuarterbackStats() {
        final List<QuarterbackStats> quarterbackStats = new ArrayList<>();
        final String sql = "SELECT player_id, player_name, team, season, pass_yards, pass_attempts, completions, pass_touchdowns, interceptions_thrown, sacks_taken, sack_yards_lost, " +
                "pass_first_downs, yards_per_attempt, pass_20_plus, pass_40_plus, pass_longest\n" +
                "\tFROM public.quarterback_stats;";

        try {
            final SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                quarterbackStats.add(mapRowToQuarterbackStats(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
                throw new DaoException("unable to connect to server or database", e);
        }
        return quarterbackStats;
    }

    QuarterbackStats mapRowToQuarterbackStats(SqlRowSet rowSet) {
        QuarterbackStats quarterbackStats = new QuarterbackStats();
        quarterbackStats.setPlayerId(rowSet.getString("player_id"));
        quarterbackStats.setPlayerName(rowSet.getString("player_name"));
        quarterbackStats.setTeam(rowSet.getString("team"));
        quarterbackStats.setSeason(rowSet.getInt("season"));
        quarterbackStats.setPassYards(rowSet.getInt("pass_yards"));
        quarterbackStats.setPassAttempts(rowSet.getInt("pass_attempts"));
        quarterbackStats.setCompletions(rowSet.getInt("completions"));
        quarterbackStats.setPassTouchdowns(rowSet.getInt("pass_touchdowns"));
        quarterbackStats.setInterceptions(rowSet.getInt("interceptions_thrown"));
        quarterbackStats.setSacksTaken(rowSet.getInt("sacks_taken"));
        quarterbackStats.setSackYardsLost(rowSet.getInt("sack_yards_lost"));
        quarterbackStats.setPassFirstDowns(rowSet.getInt("pass_first_downs"));
        quarterbackStats.setYardsPerAttempt(rowSet.getInt("yards_per_attempt"));
        quarterbackStats.setPass20PlusYards(rowSet.getInt("pass_20_plus"));
        quarterbackStats.setPass40PlusYards(rowSet.getInt("pass_40_plus"));
        quarterbackStats.setPassLongest(rowSet.getInt("pass_longest"));
        return quarterbackStats;
    }
}
