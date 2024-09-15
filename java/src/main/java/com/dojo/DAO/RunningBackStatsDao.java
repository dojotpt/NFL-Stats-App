package com.dojo.DAO;

import com.dojo.Models.QuarterbackStats;

import java.util.List;

public interface RunningBackStatsDao {
    List<QuarterbackStats> getQuarterbackStats();
}
