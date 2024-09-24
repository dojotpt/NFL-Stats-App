package com.dojo.Controller;

import com.dojo.DAO.TightEndStatsDao;
import com.dojo.Models.DataTransferObjects.TightEndStatsResponseDTO;
import com.dojo.Models.TightEndStats;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class TightEndStatsController {
    private final TightEndStatsDao tightEndStatsDao;

    public TightEndStatsController(TightEndStatsDao tightEndStatsDao) {
        this.tightEndStatsDao = tightEndStatsDao;
    }
    @GetMapping("/stats/te")
    public TightEndStatsResponseDTO getTightEndStats() {
        final List<TightEndStats> tightEndStatsList = this.tightEndStatsDao.getTightEndStats();
    return new TightEndStatsResponseDTO(tightEndStatsList);
    }
}
