package com.dojo.Controller;

import com.dojo.DAO.WideReceiverStatsDao;
import com.dojo.Models.DataTransferObjects.WideReceiverStatsResponseDTO;
import com.dojo.Models.WideReceiverStats;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class WideReceiverStatsController {
    private final WideReceiverStatsDao wideReceiverStatsDao;

    public WideReceiverStatsController(WideReceiverStatsDao wideReceiverStatsDao) {
        this.wideReceiverStatsDao = wideReceiverStatsDao;
    }
    @GetMapping("/stats/wr")
public WideReceiverStatsResponseDTO getWideReceiverStats() {
        final List<WideReceiverStats> wideReceiverStatsList = this.wideReceiverStatsDao.getWideReceiverStats();
        return new WideReceiverStatsResponseDTO(wideReceiverStatsList);
    }
}
