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
    return null;
}

}
