package com.dojo.Controller;

import com.dojo.DAO.RunningBackStatsDao;
import com.dojo.Models.DataTransferObjects.RunningBackStatsResponseDTO;
import com.dojo.Models.RunningBackStats;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class RunningBackStatsController {
private final RunningBackStatsDao runningBackStatsDao;

public RunningBackStatsController(RunningBackStatsDao runningBackStatsDao) {
    this.runningBackStatsDao = runningBackStatsDao;
}
@GetMapping("/stats/rb")
    public RunningBackStatsResponseDTO getRunningBackStats() {
    final List<RunningBackStats> runningBackStats = this.runningBackStatsDao.getRunningBackStats();
    return new RunningBackStatsResponseDTO(runningBackStats);
}
}

