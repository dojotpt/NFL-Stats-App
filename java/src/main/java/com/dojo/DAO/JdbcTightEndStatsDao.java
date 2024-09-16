package com.dojo.DAO;

import com.dojo.Exception.DaoException;
import com.dojo.Models.TightEndStats;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcTightEndStatsDao implements TightEndStatsDao{
private JdbcTemplate jdbcTemplate;

public JdbcTightEndStatsDao(JdbcTemplate jdbcTemplate) {this.jdbcTemplate = jdbcTemplate;
}
@Override
    public List<TightEndStats> getTightEndStats() {
    final List<TightEndStats> tightEndStats = new ArrayList<>();
    final String sql = "SELECT player_id, player_name, team, season, receptions, receiving_yards, receiving_touchdowns, receiving_20_plus, receiving_40_plus, receiving_longest, receiving_first_downs, receiving_fumbles, receiving_yac, receiving_targets, blocking_snaps, blocking_efficiency, pass_protection, run_blocking\n" +
            "\tFROM public.tight_end_stats;";
    try {
        final SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            tightEndStats.add(mapRowToTightEndStats(results));
        }
    }catch (CannotGetJdbcConnectionException e) {
        throw new DaoException("unable to connect to server or database");
}
    return tightEndStats;
}

TightEndStats mapRowToTightEndStats(SqlRowSet rowSet) {
    TightEndStats tightEndStats = new TightEndStats();
    tightEndStats.setPlayerId(rowSet.getString("player_id"));
    tightEndStats.setPlayerName(rowSet.getString("player_name"));
    tightEndStats.setTeam(rowSet.getString("team"));
    tightEndStats.setSeason(rowSet.getInt("season"));
    tightEndStats.setReceptions(rowSet.getInt("receptions"));
    tightEndStats.setReceivingYards(rowSet.getInt("receiving_yards"));
    tightEndStats.setTouchdowns(rowSet.getInt("receiving_touchdowns"));
    tightEndStats.setReceiving20Plus(rowSet.getInt("receiving_20_plus"));
    tightEndStats.setReceiving40Plus(rowSet.getInt("receiving_40_plus"));
    tightEndStats.setReceivingLongest(rowSet.getInt("receiving_longest"));
    tightEndStats.setFirstDowns(rowSet.getInt("receiving_first_downs"));
    tightEndStats.setFumbles(rowSet.getInt("receving_fumbles"));
    tightEndStats.setReceivingYAC(rowSet.getInt("receiving_yac"));
    tightEndStats.setReceivingTargets(rowSet.getInt("receiving_targets"));
    tightEndStats.setBlockingSnaps(rowSet.getInt("blocking_snaps"));
    tightEndStats.setBlockingEfficiency(rowSet.getInt("blocking_efficiency"));
    tightEndStats.setPassProtection(rowSet.getInt("pass_protection"));
    tightEndStats.setRunBlocking(rowSet.getInt("run_blocking"));
    return tightEndStats;
}
}
