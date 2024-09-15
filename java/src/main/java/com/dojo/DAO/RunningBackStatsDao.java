package com.dojo.DAO;

import com.dojo.Models.QuarterbackStats;
import com.dojo.Models.RunningBackStats;

import java.util.List;

public interface RunningBackStatsDao {
    List<RunningBackStats> getRunningBackStats();
}
