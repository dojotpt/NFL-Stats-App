package com.dojo.DAO;

import com.dojo.Models.QuarterbackStats;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class JdbcRunningBackStatsDao implements RunningBackStatsDao {
    private JdbcTemplate jdbcTemplate;

    public JdbcRunningBackStatsDao(JdbcTemplate jdbcTemplate) { this.jdbcTemplate = jdbcTemplate; }
    @Override
    public List<QuarterbackStats> getQuarterbackStats() {
        return List.of();
    }
}
