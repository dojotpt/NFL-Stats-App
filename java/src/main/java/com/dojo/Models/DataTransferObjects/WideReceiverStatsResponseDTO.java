package com.dojo.Models.DataTransferObjects;

import com.dojo.Models.QuarterbackStats;
import com.dojo.Models.WideReceiverStats;

import java.util.List;

public class WideReceiverStatsResponseDTO {

    private List<WideReceiverStats> wideReceiverStatsList;
    public WideReceiverStatsResponseDTO(List<WideReceiverStats> wideReceiverStatsList) {this.wideReceiverStatsList = wideReceiverStatsList;}
    public List<WideReceiverStats> getWideReceiverStatsList() {return wideReceiverStatsList;}
}
