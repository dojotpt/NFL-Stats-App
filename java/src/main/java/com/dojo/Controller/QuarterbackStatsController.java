package com.dojo.Controller;

import com.dojo.DAO.QuarterbackStatsDao;
import com.dojo.Models.QuarterbackStats;
import com.dojo.Models.DataTransferObjects.QuarterbackStatsResponseDTO;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class QuarterbackStatsController {
    private final QuarterbackStatsDao quarterbackStatsDao;

    public QuarterbackStatsController(QuarterbackStatsDao quarterbackStatsDao) {
        this.quarterbackStatsDao = quarterbackStatsDao;
    }
    @GetMapping("/stats/qb")
    public QuarterbackStatsResponseDTO getQuarterbackStats() {
        final List<QuarterbackStats> quarterbackStatsList = this.quarterbackStatsDao.getQuarterbackStats();
        return new QuarterbackStatsResponseDTO(quarterbackStatsList);
    }
}
