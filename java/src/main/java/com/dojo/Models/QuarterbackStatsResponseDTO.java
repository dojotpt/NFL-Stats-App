package com.dojo.Models;

import java.util.List;

public class QuarterbackStatsResponseDTO {

    private List<QuarterbackStats> quarterbackStatsList;
    public QuarterbackStatsResponseDTO(List<QuarterbackStats> quarterbackStatsList) {this.quarterbackStatsList = quarterbackStatsList;}
    public List<QuarterbackStats> getQuarterbackStatsList() {return quarterbackStatsList;}
}
