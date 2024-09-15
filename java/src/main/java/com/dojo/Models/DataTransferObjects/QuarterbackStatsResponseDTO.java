package com.dojo.Models.DataTransferObjects;

import com.dojo.Models.QuarterbackStats;

import java.util.List;

public class QuarterbackStatsResponseDTO {

    private List<QuarterbackStats> quarterbackStatsList;
    public QuarterbackStatsResponseDTO(List<QuarterbackStats> quarterbackStatsList) {this.quarterbackStatsList = quarterbackStatsList;}
    public List<QuarterbackStats> getQuarterbackStatsList() {return quarterbackStatsList;}
}
