package com.dojo.Models.DataTransferObjects;

import com.dojo.Models.TightEndStats;

import java.util.List;

public class TightEndStatsResponseDTO {
private List<TightEndStats> tightEndStatsList;
public TightEndStatsResponseDTO(List<TightEndStats> tightEndStatsList) {this.tightEndStatsList = tightEndStatsList;}
public List<TightEndStats> getTightEndStatsList() {return tightEndStatsList;}
}
