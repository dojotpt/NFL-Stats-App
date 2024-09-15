package com.dojo.Models.DataTransferObjects;

import com.dojo.Models.RunningBackStats;

import java.util.List;

public class RunningBackStatsResponseDTO {

    private List<RunningBackStats> runningBackStatsList;
    public RunningBackStatsResponseDTO(List<RunningBackStats> runningBackStatsList) {this.runningBackStatsList = runningBackStatsList;}

    public List<RunningBackStats> getRunningBackStatsList() {
        return runningBackStatsList;
    }
}
