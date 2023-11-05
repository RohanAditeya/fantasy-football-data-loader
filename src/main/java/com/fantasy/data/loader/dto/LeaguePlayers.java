package com.fantasy.data.loader.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.time.OffsetDateTime;

@Data
public class LeaguePlayers {
    @JsonProperty(value = "cost_change_event")
    private int costChangeEvent;
    @JsonProperty(value = "cost_change_event_fall")
    private int costChangeEventFall;
    @JsonProperty(value = "cost_change_start")
    private int costChangeStart;
    @JsonProperty(value = "cost_change_start_fall")
    private int costChangeStartFall;
    private String news;
    @JsonProperty(value = "news_added")
    private OffsetDateTime newsAdded;
    @JsonProperty(value = "transfers_in_event")
    private int transfersInEvent;
    @JsonProperty(value = "transfers_out_event")
    private int transfersOutEvent;
    @JsonProperty(value = "corners_and_indirect_freekicks_order")
    private String cornersAndIndirectFreeKicksOrder;
    @JsonProperty(value = "corners_and_indirect_freekicks_text")
    private String cornersAndIndirectFreeKicksText;
    @JsonProperty(value = "direct_freekicks_order")
    private String directFreeKicksOrder;
    @JsonProperty(value = "direct_freekicks_text")
    private String directFreeKicksText;
    @JsonProperty(value = "penalties_order")
    private String penaltiesOrder;
    @JsonProperty(value = "penalties_text")
    private String penaltiesText;
    private long code;
    @JsonProperty(value = "first_name")
    private String firstName;
    private int id;
    @JsonProperty(value = "second_name")
    private String secondName;
    private int team;
    @JsonProperty(value = "team_code")
    private int teamCode;
    @JsonProperty(value = "web_name")
    private String webName;
    @JsonProperty(value = "squad_number")
    private int squadNumber;
    @JsonProperty(value = "dream_team_count")
    private int dreamTeamCount;
    @JsonProperty(value = "total_points")
    private int totalPoints;
    @JsonProperty(value = "value_season")
    private float valueSeason;
    @JsonProperty(value = "value_form")
    private float valueForm;
    private float form;
    @JsonProperty(value = "points_per_game")
    private float pointsPerGame;
    @JsonProperty(value = "goals_scored")
    private int goalsScored;
    private int assists;
    @JsonProperty(value = "clean_sheets")
    private int cleanSheets;
    @JsonProperty(value = "goals_conceded")
    private int goalsConceded;
    @JsonProperty(value = "own_goals")
    private int ownGoals;
    @JsonProperty(value = "penalties_saved")
    private int penaltiesSaved;
    @JsonProperty(value = "penalties_missed")
    private int penaltiesMissed;
    @JsonProperty(value = "yellow_cards")
    private int yellowCards;
    @JsonProperty(value = "red_cards")
    private int redCards;
    private int bonus;
    private int bps;
    private float influence;
    private float creativity;
    private float threat;
    @JsonProperty(value = "ict_index")
    private float ictIndex;
    private int starts;
    @JsonProperty(value = "expected_goals")
    private float expectedGoals;
    @JsonProperty(value = "expected_assists")
    private float expectedAssists;
    @JsonProperty(value = "expected_goal_involvements")
    private float expectedGoalInvolvements;
    @JsonProperty(value = "expected_goals_conceded")
    private float expectedGoalsConceded;
    @JsonProperty(value = "ep_next")
    private float epNext;
    @JsonProperty(value = "ep_this")
    private float epThis;
    @JsonProperty(value = "chance_of_playing_next_round")
    private int chanceOfPlayingNextRound;
    @JsonProperty(value = "chance_of_playing_this_round")
    private int chanceOfPlayingThisRound;
    @JsonProperty(value = "event_points")
    private int eventPoints;
    @JsonProperty(value = "in_dream_team")
    private boolean inDreamTeam;
    @JsonProperty(value = "now_cost")
    private int nowCost;
    @JsonProperty(value = "selected_by_percent")
    private float selectedByPercent;
    @JsonProperty(value = "transfers_in")
    private long transfersIn;
    @JsonProperty(value = "transfers_out")
    private long transfersOut;
    @JsonProperty(value = "expected_goals_per_90")
    private int expectedGoalsPer90;
    @JsonProperty(value = "saves_per_90")
    private int savesPer90;
    @JsonProperty(value = "expected_assists_per_90")
    private int expectedAssistsPer90;
    @JsonProperty(value = "expected_goal_involvements_per_90")
    private int expectedGoalInvolvementsPer90;
    @JsonProperty(value = "expected_goals_conceded_per_90")
    private int expectedGoalsConcededPer90;
    @JsonProperty(value = "starts_per_90")
    private int startsPer90;
    @JsonProperty(value = "clean_sheets_per_90")
    private int cleanSheetsPer90;
    @JsonProperty(value = "element_type")
    private int elementType;
    private boolean special;
    private String status;
    @JsonProperty(value = "influence_rank")
    private int influenceRank;
    @JsonProperty(value = "influence_rank_type")
    private int influenceRankType;
    @JsonProperty(value = "creativity_rank")
    private int creativityRank;
    @JsonProperty(value = "creativity_rank_type")
    private int creativityRankType;
    @JsonProperty(value = "threat_rank")
    private int threatRank;
    @JsonProperty(value = "threat_rank_type")
    private int threatRankType;
    @JsonProperty(value = "ict_index_rank")
    private int ictIndexRank;
    @JsonProperty(value = "ict_index_rank_type")
    private int ictIndexRankType;
    @JsonProperty(value = "now_cost_rank")
    private int nowCostRank;
    @JsonProperty(value = "now_cost_rank_type")
    private int nowCostRankType;
    @JsonProperty(value = "form_rank")
    private int formRank;
    @JsonProperty(value = "form_rank_type")
    private int formRankType;
    @JsonProperty(value = "points_per_game_rank")
    private int pointsPerGameRank;
    @JsonProperty(value = "points_per_game_rank_type")
    private int pointsPerGameRankType;
    @JsonProperty(value = "selected_rank")
    private int selectedRank;
    @JsonProperty(value = "selected_rank_type")
    private int selectedRankType;
}