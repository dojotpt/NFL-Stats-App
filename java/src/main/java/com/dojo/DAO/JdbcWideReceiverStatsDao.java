package com.dojo.DAO;

import com.dojo.Exception.DaoException;
import com.dojo.Models.WideReceiverStats;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcWideReceiverStatsDao implements WideReceiverStatsDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcWideReceiverStatsDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;}
    @Override
    public List<WideReceiverStats> getWideReceiverStats() {
        final List<WideReceiverStats> wideReceiverStats = new ArrayList<>();
        final String sql = "SELECT player_id, player_name, team, season, receptions, receiving_yards, receiving_touchdowns, receiving_20_plus, receiving_40_plus, receiving_longest, receiving_first_downs, receiving_fumbles, receiving_yac, receiving_targets\n" +
                "\tFROM public.receiver_stats;";
        try {
            final SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
            while (results.next()) {
                wideReceiverStats.add(mapRowToWideReceiverStats(results));
            }
        }catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("unable to connect to server or database");
        }
        return wideReceiverStats;
    }

    WideReceiverStats mapRowToWideReceiverStats(SqlRowSet rowSet) {
        WideReceiverStats wideReceiverStats = new WideReceiverStats();
        wideReceiverStats.setPlayerId(rowSet.getString("player_id"));
        wideReceiverStats.setPlayerName(rowSet.getString("player_name"));
        wideReceiverStats.setTeam(rowSet.getString("team"));
        wideReceiverStats.setSeason(rowSet.getInt("season"));
        wideReceiverStats.setReceptions(rowSet.getInt("receptions"));
        wideReceiverStats.setReceivingYards(rowSet.getInt("receiving_yards"));
        wideReceiverStats.setReceivingTouchdowns(rowSet.getInt("receiving_touchdowns"));
        wideReceiverStats.setReceivingYards20Plus(rowSet.getInt("receivingYards20Plus"));
        wideReceiverStats.setReceivingYards40plus(rowSet.getInt("receiving_longest"));
        wideReceiverStats.setFirstDowns(rowSet.getInt("receiving_first_downs"));
        wideReceiverStats.setFumbles(rowSet.getInt("receiving_fumbles"));
        wideReceiverStats.setReceivingYAC(rowSet.getInt("receiving_yac"));
        wideReceiverStats.setTargets(rowSet.getInt("receiving_targets"));
        return wideReceiverStats;
    }
}
