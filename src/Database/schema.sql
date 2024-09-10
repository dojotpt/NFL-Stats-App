BEGIN TRANSACTION;

CREATE TABLE nfl_plays_2019 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(3),
                                away_team VARCHAR(3),
                                season_type VARCHAR(4),
                                week INT,
                                posteam VARCHAR(3),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(3),
                                side_of_field VARCHAR(3),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT,
                                half_seconds_remaining INT,
                                game_seconds_remaining INT,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT,
                                sp BOOLEAN,
                                qtr INT,
                                down INT,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT,
                                ydsnet INT,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT,
                                yards_after_catch INT,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT,
                                away_timeouts_remaining INT,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(3),
                                td_team VARCHAR(3),                 -- Team that scored the touchdown
                                td_player_name VARCHAR(50),         -- Player name who scored the touchdown
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT,
                                defteam_timeouts_remaining INT,
                                total_home_score INT,
                                total_away_score INT,
                                posteam_score INT,
                                no_score_prob NUMERIC,                    -- Probability of no score on the play
                                opp_fg_prob NUMERIC,                      -- Opponent field goal probability
                                opp_safety_prob NUMERIC,                  -- Opponent safety probability
                                opp_td_prob NUMERIC,                      -- Opponent touchdown probability
                                fg_prob NUMERIC,                          -- Field goal probability
                                safety_prob NUMERIC,                      -- Safety probability
                                td_prob NUMERIC,                          -- Touchdown probability
                                extra_point_prob NUMERIC,                 -- Extra point probability
                                two_point_conversion_prob NUMERIC,        -- Two-point conversion probability
                                ep NUMERIC,                               -- Expected points
                                epa NUMERIC,                              -- Expected points added
                                total_home_epa NUMERIC,                   -- Total EPA for the home team
                                total_away_epa NUMERIC,                   -- Total EPA for the away team
                                total_home_rush_epa NUMERIC,              -- Total rushing EPA for the home team
                                total_away_rush_epa NUMERIC,              -- Total rushing EPA for the away team
                                total_home_pass_epa NUMERIC,              -- Total passing EPA for the home team
                                total_away_pass_epa NUMERIC,              -- Total passing EPA for the away team
                                air_epa NUMERIC,                          -- Air yards EPA
                                yac_epa NUMERIC,                          -- Yards after catch EPA
                                comp_air_epa NUMERIC,                     -- Completed air yards EPA
                                comp_yac_epa NUMERIC,                     -- Completed yards after catch EPA
                                total_home_comp_air_epa NUMERIC,          -- Total home team completed air yards EPA
                                total_away_comp_air_epa NUMERIC,          -- Total away team completed air yards EPA
                                total_home_comp_yac_epa NUMERIC,          -- Total home team completed YAC EPA
                                total_away_comp_yac_epa NUMERIC,          -- Total away team completed YAC EPA
                                total_home_raw_air_epa NUMERIC,           -- Total home team raw air EPA
                                total_away_raw_air_epa NUMERIC,           -- Total away team raw air EPA
                                total_home_raw_yac_epa NUMERIC,           -- Total home team raw YAC EPA
                                total_away_raw_yac_epa NUMERIC,           -- Total away team raw YAC EPA
                                wp NUMERIC,                               -- Win probability
                                def_wp NUMERIC,                           -- Defensive win probability
                                home_wp NUMERIC,                          -- Home team win probability
                                away_wp NUMERIC,                          -- Away team win probability
                                wpa NUMERIC,                              -- Win probability added
                                vegas_wpa NUMERIC,                        -- Win probability added by Vegas odds
                                vegas_home_wpa NUMERIC,                   -- Home team Vegas WPA
                                home_wp_post NUMERIC,                     -- Home team win probability after the play
                                away_wp_post NUMERIC,                     -- Away team win probability after the play
                                vegas_wp NUMERIC,                         -- Vegas win probability
                                vegas_home_wp NUMERIC,                    -- Vegas home team win probability
                                total_home_rush_wpa NUMERIC,              -- Total home team rushing WPA
                                total_away_rush_wpa NUMERIC,              -- Total away team rushing WPA
                                total_home_pass_wpa NUMERIC,              -- Total home team passing WPA
                                total_away_pass_wpa NUMERIC,              -- Total away team passing WPA
                                air_wpa NUMERIC,                          -- Air yards WPA
                                yac_wpa NUMERIC,                          -- Yards after catch WPA
                                comp_air_wpa NUMERIC,                     -- Completed air yards WPA
                                comp_yac_wpa NUMERIC,                     -- Completed YAC WPA
                                total_home_comp_air_wpa NUMERIC,          -- Total home team completed air yards WPA
                                total_away_comp_air_wpa NUMERIC,          -- Total away team completed air yards WPA
                                total_home_comp_yac_wpa NUMERIC,          -- Total home team completed YAC WPA
                                total_away_comp_yac_wpa NUMERIC,          -- Total away team completed YAC WPA
                                total_home_raw_air_wpa NUMERIC,           -- Total home team raw air WPA
                                total_away_raw_air_wpa NUMERIC,           -- Total away team raw air WPA
                                total_home_raw_yac_wpa NUMERIC,           -- Total home team raw YAC WPA
                                total_away_raw_yac_wpa NUMERIC,           -- Total away team raw YAC WPA
                                punt_blocked BOOLEAN,                     -- Indicator for blocked punt
                                first_down_rush BOOLEAN,                  -- Indicator for first down by rush
                                first_down_pass BOOLEAN,                  -- Indicator for first down by pass
                                first_down_penalty BOOLEAN,               -- Indicator for first down by penalty
                                third_down_converted BOOLEAN,             -- Indicator for third down conversion
                                third_down_failed BOOLEAN,                -- Indicator for third down failure
                                fourth_down_converted BOOLEAN,            -- Indicator for fourth down conversion
                                fourth_down_failed BOOLEAN,               -- Indicator for fourth down failure
                                incomplete_pass BOOLEAN,                  -- Indicator for incomplete pass
                                touchback BOOLEAN,                        -- Indicator for touchback
                                interception BOOLEAN,                     -- Indicator for interception
                                punt_inside_twenty BOOLEAN,               -- Indicator for punt inside the 20-yard line
                                punt_in_endzone BOOLEAN,                  -- Indicator for punt in the endzone
                                punt_out_of_bounds BOOLEAN,               -- Indicator for punt out of bounds
                                punt_downed BOOLEAN,                      -- Indicator for downed punt
                                punt_fair_catch BOOLEAN,                  -- Indicator for fair catch on punt
                                kickoff_inside_twenty BOOLEAN,            -- Indicator for kickoff inside the 20-yard line
                                kickoff_in_endzone BOOLEAN,               -- Indicator for kickoff in the endzone
                                kickoff_out_of_bounds BOOLEAN,            -- Indicator for kickoff out of bounds
                                kickoff_downed BOOLEAN,                   -- Indicator for downed kickoff
                                kickoff_fair_catch BOOLEAN,               -- Indicator for fair catch on kickoff
                                fumble_forced BOOLEAN,                    -- Indicator for forced fumble
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,            -- Indicator if the fumble went out of bounds
                                solo_tackle INT,                         -- Count of solo tackles
                                safety BOOLEAN,                          -- Indicator for a safety
                                penalty BOOLEAN,                         -- Indicator for a penalty
                                tackled_for_loss BOOLEAN,                -- Indicator if the player was tackled for loss
                                fumble_lost BOOLEAN,                     -- Indicator if the fumble was lost
                                own_kickoff_recovery BOOLEAN,            -- Indicator if the team recovered their own kickoff
                                own_kickoff_recovery_td BOOLEAN,         -- Indicator if own kickoff recovery resulted in a TD
                                qb_hit BOOLEAN,                          -- Indicator if the quarterback was hit
                                rush_attempt BOOLEAN,                    -- Indicator if there was a rushing attempt
                                pass_attempt BOOLEAN,                    -- Indicator if there was a passing attempt
                                sack BOOLEAN,                            -- Indicator for a sack
                                touchdown BOOLEAN,                       -- Indicator for any type of touchdown
                                pass_touchdown BOOLEAN,                  -- Indicator for a passing touchdown
                                rush_touchdown BOOLEAN,                  -- Indicator for a rushing touchdown
                                return_touchdown BOOLEAN,                -- Indicator for a return touchdown
                                extra_point_attempt BOOLEAN,             -- Indicator for an extra point attempt
                                two_point_attempt BOOLEAN,               -- Indicator for a two-point attempt
                                field_goal_attempt BOOLEAN,              -- Indicator for a field goal attempt
                                kickoff_attempt BOOLEAN,                 -- Indicator for a kickoff attempt
                                punt_attempt BOOLEAN,                    -- Indicator for a punt attempt
                                fumble BOOLEAN,                          -- Indicator for a fumble
                                complete_pass BOOLEAN,                   -- Indicator for a completed pass
                                assist_tackle INT,                       -- Count of assisted tackles
                                lateral_reception BOOLEAN,               -- Indicator for a lateral reception
                                lateral_rush BOOLEAN,                    -- Indicator for a lateral rush
                                lateral_return BOOLEAN,                  -- Indicator for a lateral return
                                lateral_recovery BOOLEAN,                -- Indicator for a lateral recovery
                                passer_player_id VARCHAR(20),            -- Player ID of the passer
                                passer_player_name VARCHAR(50),          -- Name of the passer
                                passing_yards INT,                       -- Passing yards gained
                                receiver_player_id VARCHAR(20),          -- Player ID of the receiver
                                receiver_player_name VARCHAR(50),        -- Name of the receiver
                                receiving_yards INT,                     -- Receiving yards gained
                                rusher_player_id VARCHAR(20),            -- Player ID of the rusher
                                rusher_player_name VARCHAR(50),          -- Name of the rusher
                                rushing_yards INT,                       -- Rushing yards gained
                                lateral_receiver_player_id VARCHAR(20),  -- Player ID of the lateral receiver
                                lateral_receiver_player_name VARCHAR(50),-- Name of the lateral receiver
                                lateral_receiving_yards INT,              -- Receiving yards from lateral play
                                lateral_rusher_player_id VARCHAR(20),          -- Player ID of the lateral rusher
                                lateral_rusher_player_name VARCHAR(50),        -- Name of the lateral rusher
                                lateral_rushing_yards INT,                     -- Rushing yards from lateral play
                                lateral_sack_player_id VARCHAR(20),            -- Player ID of the lateral sack
                                lateral_sack_player_name VARCHAR(50),          -- Name of the lateral sack
                                interception_player_id VARCHAR(20),            -- Player ID of the player making the interception
                                interception_player_name VARCHAR(50),          -- Name of the player making the interception
                                lateral_interception_player_id VARCHAR(20),    -- Player ID of the lateral interception
                                lateral_interception_player_name VARCHAR(50),  -- Name of the lateral interception player
                                punt_returner_player_id VARCHAR(20),           -- Player ID of the punt returner
                                punt_returner_player_name VARCHAR(50),         -- Name of the punt returner
                                lateral_punt_returner_player_id VARCHAR(20),   -- Player ID of the lateral punt returner
                                lateral_punt_returner_player_name VARCHAR(50), -- Name of the lateral punt returner
                                kickoff_returner_player_name VARCHAR(50),      -- Name of the kickoff returner
                                kickoff_returner_player_id VARCHAR(20),        -- Player ID of the kickoff returner
                                lateral_kickoff_returner_player_id VARCHAR(20),-- Player ID of the lateral kickoff returner
                                lateral_kickoff_returner_player_name VARCHAR(50),-- Name of the lateral kickoff returner
                                punter_player_id VARCHAR(20),                  -- Player ID of the punter
                                punter_player_name VARCHAR(50),                -- Name of the punter
                                kicker_player_name VARCHAR(50),                -- Name of the kicker
                                kicker_player_id VARCHAR(20),                  -- Player ID of the kicker
                                own_kickoff_recovery_player_id VARCHAR(20),    -- Player ID of the player recovering own kickoff
                                own_kickoff_recovery_player_name VARCHAR(50),  -- Name of the player recovering own kickoff
                                blocked_player_id VARCHAR(20),                 -- Player ID of the player who blocked a play
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),           -- Player ID of the first player to tackle for loss
                                tackle_for_loss_1_player_name VARCHAR(50),         -- Name of the first player to tackle for loss
                                tackle_for_loss_2_player_id VARCHAR(20),           -- Player ID of the second player to tackle for loss
                                tackle_for_loss_2_player_name VARCHAR(50),         -- Name of the second player to tackle for loss
                                qb_hit_1_player_id VARCHAR(20),                    -- Player ID of the first player to hit the QB
                                qb_hit_1_player_name VARCHAR(50),                  -- Name of the first player to hit the QB
                                qb_hit_2_player_id VARCHAR(20),                    -- Player ID of the second player to hit the QB
                                qb_hit_2_player_name VARCHAR(50),                  -- Name of the second player to hit the QB
                                forced_fumble_player_1_team VARCHAR(3),            -- Team of the first forced fumble player
                                forced_fumble_player_1_player_id VARCHAR(20),      -- Player ID of the first forced fumble player
                                forced_fumble_player_1_player_name VARCHAR(50),    -- Name of the first forced fumble player
                                forced_fumble_player_2_team VARCHAR(3),            -- Team of the second forced fumble player
                                forced_fumble_player_2_player_id VARCHAR(20),      -- Player ID of the second forced fumble player
                                forced_fumble_player_2_player_name VARCHAR(50),    -- Name of the second forced fumble player
                                solo_tackle_1_team VARCHAR(3),                     -- Team of the first player to make a solo tackle
                                solo_tackle_2_team VARCHAR(3),                     -- Team of the second player to make a solo tackle
                                solo_tackle_1_player_id VARCHAR(20),               -- Player ID of the first player to make a solo tackle
                                solo_tackle_2_player_id VARCHAR(20),               -- Player ID of the second player to make a solo tackle
                                solo_tackle_1_player_name VARCHAR(50),             -- Name of the first player to make a solo tackle
                                solo_tackle_2_player_name VARCHAR(50),             -- Name of the second player to make a solo tackle
                                assist_tackle_1_player_id VARCHAR(20),             -- Player ID of the first player to assist a tackle
                                assist_tackle_1_player_name VARCHAR(50),           -- Name of the first player to assist a tackle
                                assist_tackle_1_team VARCHAR(3),                   -- Team of the first player to assist a tackle
                                assist_tackle_2_player_id VARCHAR(20),             -- Player ID of the second player to assist a tackle
                                assist_tackle_2_player_name VARCHAR(50),           -- Name of the second player to assist a tackle
                                assist_tackle_2_team VARCHAR(3),                    -- Team of the second player to assist a tackle
                                assist_tackle_3_player_id VARCHAR(20),              -- Player ID of the third player to assist a tackle
                                assist_tackle_3_player_name VARCHAR(50),            -- Name of the third player to assist a tackle
                                assist_tackle_3_team VARCHAR(3),                    -- Team of the third player to assist a tackle
                                assist_tackle_4_player_id VARCHAR(20),              -- Player ID of the fourth player to assist a tackle
                                assist_tackle_4_player_name VARCHAR(50),            -- Name of the fourth player to assist a tackle
                                assist_tackle_4_team VARCHAR(3),                    -- Team of the fourth player to assist a tackle
                                tackle_with_assist BOOLEAN,                         -- Indicator for tackle with assist
                                tackle_with_assist_1_player_id VARCHAR(20),         -- Player ID of the first player involved in tackle with assist
                                tackle_with_assist_1_player_name VARCHAR(50),       -- Name of the first player involved in tackle with assist
                                tackle_with_assist_1_team VARCHAR(3),               -- Team of the first player involved in tackle with assist
                                tackle_with_assist_2_player_id VARCHAR(20),         -- Player ID of the second player involved in tackle with assist
                                tackle_with_assist_2_player_name VARCHAR(50),       -- Name of the second player involved in tackle with assist
                                tackle_with_assist_2_team VARCHAR(3),               -- Team of the second player involved in tackle with assist
                                pass_defense_1_player_id VARCHAR(20),               -- Player ID of the first player to defend a pass
                                pass_defense_1_player_name VARCHAR(50),             -- Name of the first player to defend a pass
                                pass_defense_2_player_id VARCHAR(20),               -- Player ID of the second player to defend a pass
                                pass_defense_2_player_name VARCHAR(50),             -- Name of the second player to defend a pass
                                fumbled_1_team VARCHAR(3),                          -- Team of the first player who fumbled
                                fumbled_1_player_id VARCHAR(20),                    -- Player ID of the first player who fumbled
                                fumbled_1_player_name VARCHAR(50),                  -- Name of the first player who fumbled
                                fumbled_2_player_id VARCHAR(20),                    -- Player ID of the second player who fumbled
                                fumbled_2_player_name VARCHAR(50),                  -- Name of the second player who fumbled
                                fumbled_2_team VARCHAR(3),                          -- Team of the second player who fumbled
                                fumble_recovery_1_team VARCHAR(3),                  -- Team of the first player to recover the fumble
                                fumble_recovery_1_yards INT,                        -- Yards gained after recovering the fumble
                                fumble_recovery_1_player_id VARCHAR(20),            -- Player ID of the first player to recover the fumble
                                fumble_recovery_1_player_name VARCHAR(50),         -- Name of the first player to recover the fumble
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT,
                                fumble_recovery_2_player_id INT,
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id INT,
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id INT,
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id INT,
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT,
                                penalty_team VARCHAR(255),
                                penalty_player_id INT,
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id INT,
                                season INT,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id INT,
                                play_clock TIME,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT,
                                fixed_drive INT,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIME,
                                drive_play_count INT,
                                drive_time_of_possession TIME,
                                drive_first_downs INT,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT,
                                drive_quarter_end INT,
                                drive_yards_penalized INT,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line INT,
                                drive_end_yard_line INT,
                                drive_play_id_started INT,
                                drive_play_id_ended INT,
                                away_score INT,
                                home_score INT,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id INT,
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer INT,
                                passer_jersey_number INT,
                                rusher INT,
                                rusher_jersey_number INT,
                                receiver INT,
                                receiver_jersey_number INT,
                                pass INT,
                                rush INT,
                                first_down BOOLEAN,
                                special INT,
                                play INT,
                                passer_id INT,
                                rusher_id INT,
                                receiver_id INT,
                                name VARCHAR(255),
                                jersey_number INT,
                                id INT,
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id INT,
                                fantasy BOOLEAN,
                                fantasy_id INT,
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success BOOLEAN,
                                xyac_fd INT,
                                xpass INT,
                                pass_oe INT,
                                UNIQUE(game_id, play_id)
);

CREATE TABLE nfl_plays_2020 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(3),
                                away_team VARCHAR(3),
                                season_type VARCHAR(4),
                                week INT,
                                posteam VARCHAR(3),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(3),
                                side_of_field VARCHAR(3),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT,
                                half_seconds_remaining INT,
                                game_seconds_remaining INT,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT,
                                sp BOOLEAN,
                                qtr INT,
                                down INT,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT,
                                ydsnet INT,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT,
                                yards_after_catch INT,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT,
                                away_timeouts_remaining INT,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(3),
                                td_team VARCHAR(3),                 -- Team that scored the touchdown
                                td_player_name VARCHAR(50),         -- Player name who scored the touchdown
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT,
                                defteam_timeouts_remaining INT,
                                total_home_score INT,
                                total_away_score INT,
                                posteam_score INT,
                                no_score_prob NUMERIC,                    -- Probability of no score on the play
                                opp_fg_prob NUMERIC,                      -- Opponent field goal probability
                                opp_safety_prob NUMERIC,                  -- Opponent safety probability
                                opp_td_prob NUMERIC,                      -- Opponent touchdown probability
                                fg_prob NUMERIC,                          -- Field goal probability
                                safety_prob NUMERIC,                      -- Safety probability
                                td_prob NUMERIC,                          -- Touchdown probability
                                extra_point_prob NUMERIC,                 -- Extra point probability
                                two_point_conversion_prob NUMERIC,        -- Two-point conversion probability
                                ep NUMERIC,                               -- Expected points
                                epa NUMERIC,                              -- Expected points added
                                total_home_epa NUMERIC,                   -- Total EPA for the home team
                                total_away_epa NUMERIC,                   -- Total EPA for the away team
                                total_home_rush_epa NUMERIC,              -- Total rushing EPA for the home team
                                total_away_rush_epa NUMERIC,              -- Total rushing EPA for the away team
                                total_home_pass_epa NUMERIC,              -- Total passing EPA for the home team
                                total_away_pass_epa NUMERIC,              -- Total passing EPA for the away team
                                air_epa NUMERIC,                          -- Air yards EPA
                                yac_epa NUMERIC,                          -- Yards after catch EPA
                                comp_air_epa NUMERIC,                     -- Completed air yards EPA
                                comp_yac_epa NUMERIC,                     -- Completed yards after catch EPA
                                total_home_comp_air_epa NUMERIC,          -- Total home team completed air yards EPA
                                total_away_comp_air_epa NUMERIC,          -- Total away team completed air yards EPA
                                total_home_comp_yac_epa NUMERIC,          -- Total home team completed YAC EPA
                                total_away_comp_yac_epa NUMERIC,          -- Total away team completed YAC EPA
                                total_home_raw_air_epa NUMERIC,           -- Total home team raw air EPA
                                total_away_raw_air_epa NUMERIC,           -- Total away team raw air EPA
                                total_home_raw_yac_epa NUMERIC,           -- Total home team raw YAC EPA
                                total_away_raw_yac_epa NUMERIC,           -- Total away team raw YAC EPA
                                wp NUMERIC,                               -- Win probability
                                def_wp NUMERIC,                           -- Defensive win probability
                                home_wp NUMERIC,                          -- Home team win probability
                                away_wp NUMERIC,                          -- Away team win probability
                                wpa NUMERIC,                              -- Win probability added
                                vegas_wpa NUMERIC,                        -- Win probability added by Vegas odds
                                vegas_home_wpa NUMERIC,                   -- Home team Vegas WPA
                                home_wp_post NUMERIC,                     -- Home team win probability after the play
                                away_wp_post NUMERIC,                     -- Away team win probability after the play
                                vegas_wp NUMERIC,                         -- Vegas win probability
                                vegas_home_wp NUMERIC,                    -- Vegas home team win probability
                                total_home_rush_wpa NUMERIC,              -- Total home team rushing WPA
                                total_away_rush_wpa NUMERIC,              -- Total away team rushing WPA
                                total_home_pass_wpa NUMERIC,              -- Total home team passing WPA
                                total_away_pass_wpa NUMERIC,              -- Total away team passing WPA
                                air_wpa NUMERIC,                          -- Air yards WPA
                                yac_wpa NUMERIC,                          -- Yards after catch WPA
                                comp_air_wpa NUMERIC,                     -- Completed air yards WPA
                                comp_yac_wpa NUMERIC,                     -- Completed YAC WPA
                                total_home_comp_air_wpa NUMERIC,          -- Total home team completed air yards WPA
                                total_away_comp_air_wpa NUMERIC,          -- Total away team completed air yards WPA
                                total_home_comp_yac_wpa NUMERIC,          -- Total home team completed YAC WPA
                                total_away_comp_yac_wpa NUMERIC,          -- Total away team completed YAC WPA
                                total_home_raw_air_wpa NUMERIC,           -- Total home team raw air WPA
                                total_away_raw_air_wpa NUMERIC,           -- Total away team raw air WPA
                                total_home_raw_yac_wpa NUMERIC,           -- Total home team raw YAC WPA
                                total_away_raw_yac_wpa NUMERIC,           -- Total away team raw YAC WPA
                                punt_blocked BOOLEAN,                     -- Indicator for blocked punt
                                first_down_rush BOOLEAN,                  -- Indicator for first down by rush
                                first_down_pass BOOLEAN,                  -- Indicator for first down by pass
                                first_down_penalty BOOLEAN,               -- Indicator for first down by penalty
                                third_down_converted BOOLEAN,             -- Indicator for third down conversion
                                third_down_failed BOOLEAN,                -- Indicator for third down failure
                                fourth_down_converted BOOLEAN,            -- Indicator for fourth down conversion
                                fourth_down_failed BOOLEAN,               -- Indicator for fourth down failure
                                incomplete_pass BOOLEAN,                  -- Indicator for incomplete pass
                                touchback BOOLEAN,                        -- Indicator for touchback
                                interception BOOLEAN,                     -- Indicator for interception
                                punt_inside_twenty BOOLEAN,               -- Indicator for punt inside the 20-yard line
                                punt_in_endzone BOOLEAN,                  -- Indicator for punt in the endzone
                                punt_out_of_bounds BOOLEAN,               -- Indicator for punt out of bounds
                                punt_downed BOOLEAN,                      -- Indicator for downed punt
                                punt_fair_catch BOOLEAN,                  -- Indicator for fair catch on punt
                                kickoff_inside_twenty BOOLEAN,            -- Indicator for kickoff inside the 20-yard line
                                kickoff_in_endzone BOOLEAN,               -- Indicator for kickoff in the endzone
                                kickoff_out_of_bounds BOOLEAN,            -- Indicator for kickoff out of bounds
                                kickoff_downed BOOLEAN,                   -- Indicator for downed kickoff
                                kickoff_fair_catch BOOLEAN,               -- Indicator for fair catch on kickoff
                                fumble_forced BOOLEAN,                    -- Indicator for forced fumble
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,            -- Indicator if the fumble went out of bounds
                                solo_tackle INT,                         -- Count of solo tackles
                                safety BOOLEAN,                          -- Indicator for a safety
                                penalty BOOLEAN,                         -- Indicator for a penalty
                                tackled_for_loss BOOLEAN,                -- Indicator if the player was tackled for loss
                                fumble_lost BOOLEAN,                     -- Indicator if the fumble was lost
                                own_kickoff_recovery BOOLEAN,            -- Indicator if the team recovered their own kickoff
                                own_kickoff_recovery_td BOOLEAN,         -- Indicator if own kickoff recovery resulted in a TD
                                qb_hit BOOLEAN,                          -- Indicator if the quarterback was hit
                                rush_attempt BOOLEAN,                    -- Indicator if there was a rushing attempt
                                pass_attempt BOOLEAN,                    -- Indicator if there was a passing attempt
                                sack BOOLEAN,                            -- Indicator for a sack
                                touchdown BOOLEAN,                       -- Indicator for any type of touchdown
                                pass_touchdown BOOLEAN,                  -- Indicator for a passing touchdown
                                rush_touchdown BOOLEAN,                  -- Indicator for a rushing touchdown
                                return_touchdown BOOLEAN,                -- Indicator for a return touchdown
                                extra_point_attempt BOOLEAN,             -- Indicator for an extra point attempt
                                two_point_attempt BOOLEAN,               -- Indicator for a two-point attempt
                                field_goal_attempt BOOLEAN,              -- Indicator for a field goal attempt
                                kickoff_attempt BOOLEAN,                 -- Indicator for a kickoff attempt
                                punt_attempt BOOLEAN,                    -- Indicator for a punt attempt
                                fumble BOOLEAN,                          -- Indicator for a fumble
                                complete_pass BOOLEAN,                   -- Indicator for a completed pass
                                assist_tackle INT,                       -- Count of assisted tackles
                                lateral_reception BOOLEAN,               -- Indicator for a lateral reception
                                lateral_rush BOOLEAN,                    -- Indicator for a lateral rush
                                lateral_return BOOLEAN,                  -- Indicator for a lateral return
                                lateral_recovery BOOLEAN,                -- Indicator for a lateral recovery
                                passer_player_id VARCHAR(20),            -- Player ID of the passer
                                passer_player_name VARCHAR(50),          -- Name of the passer
                                passing_yards INT,                       -- Passing yards gained
                                receiver_player_id VARCHAR(20),          -- Player ID of the receiver
                                receiver_player_name VARCHAR(50),        -- Name of the receiver
                                receiving_yards INT,                     -- Receiving yards gained
                                rusher_player_id VARCHAR(20),            -- Player ID of the rusher
                                rusher_player_name VARCHAR(50),          -- Name of the rusher
                                rushing_yards INT,                       -- Rushing yards gained
                                lateral_receiver_player_id VARCHAR(20),  -- Player ID of the lateral receiver
                                lateral_receiver_player_name VARCHAR(50),-- Name of the lateral receiver
                                lateral_receiving_yards INT,              -- Receiving yards from lateral play
                                lateral_rusher_player_id VARCHAR(20),          -- Player ID of the lateral rusher
                                lateral_rusher_player_name VARCHAR(50),        -- Name of the lateral rusher
                                lateral_rushing_yards INT,                     -- Rushing yards from lateral play
                                lateral_sack_player_id VARCHAR(20),            -- Player ID of the lateral sack
                                lateral_sack_player_name VARCHAR(50),          -- Name of the lateral sack
                                interception_player_id VARCHAR(20),            -- Player ID of the player making the interception
                                interception_player_name VARCHAR(50),          -- Name of the player making the interception
                                lateral_interception_player_id VARCHAR(20),    -- Player ID of the lateral interception
                                lateral_interception_player_name VARCHAR(50),  -- Name of the lateral interception player
                                punt_returner_player_id VARCHAR(20),           -- Player ID of the punt returner
                                punt_returner_player_name VARCHAR(50),         -- Name of the punt returner
                                lateral_punt_returner_player_id VARCHAR(20),   -- Player ID of the lateral punt returner
                                lateral_punt_returner_player_name VARCHAR(50), -- Name of the lateral punt returner
                                kickoff_returner_player_name VARCHAR(50),      -- Name of the kickoff returner
                                kickoff_returner_player_id VARCHAR(20),        -- Player ID of the kickoff returner
                                lateral_kickoff_returner_player_id VARCHAR(20),-- Player ID of the lateral kickoff returner
                                lateral_kickoff_returner_player_name VARCHAR(50),-- Name of the lateral kickoff returner
                                punter_player_id VARCHAR(20),                  -- Player ID of the punter
                                punter_player_name VARCHAR(50),                -- Name of the punter
                                kicker_player_name VARCHAR(50),                -- Name of the kicker
                                kicker_player_id VARCHAR(20),                  -- Player ID of the kicker
                                own_kickoff_recovery_player_id VARCHAR(20),    -- Player ID of the player recovering own kickoff
                                own_kickoff_recovery_player_name VARCHAR(50),  -- Name of the player recovering own kickoff
                                blocked_player_id VARCHAR(20),                 -- Player ID of the player who blocked a play
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),           -- Player ID of the first player to tackle for loss
                                tackle_for_loss_1_player_name VARCHAR(50),         -- Name of the first player to tackle for loss
                                tackle_for_loss_2_player_id VARCHAR(20),           -- Player ID of the second player to tackle for loss
                                tackle_for_loss_2_player_name VARCHAR(50),         -- Name of the second player to tackle for loss
                                qb_hit_1_player_id VARCHAR(20),                    -- Player ID of the first player to hit the QB
                                qb_hit_1_player_name VARCHAR(50),                  -- Name of the first player to hit the QB
                                qb_hit_2_player_id VARCHAR(20),                    -- Player ID of the second player to hit the QB
                                qb_hit_2_player_name VARCHAR(50),                  -- Name of the second player to hit the QB
                                forced_fumble_player_1_team VARCHAR(3),            -- Team of the first forced fumble player
                                forced_fumble_player_1_player_id VARCHAR(20),      -- Player ID of the first forced fumble player
                                forced_fumble_player_1_player_name VARCHAR(50),    -- Name of the first forced fumble player
                                forced_fumble_player_2_team VARCHAR(3),            -- Team of the second forced fumble player
                                forced_fumble_player_2_player_id VARCHAR(20),      -- Player ID of the second forced fumble player
                                forced_fumble_player_2_player_name VARCHAR(50),    -- Name of the second forced fumble player
                                solo_tackle_1_team VARCHAR(3),                     -- Team of the first player to make a solo tackle
                                solo_tackle_2_team VARCHAR(3),                     -- Team of the second player to make a solo tackle
                                solo_tackle_1_player_id VARCHAR(20),               -- Player ID of the first player to make a solo tackle
                                solo_tackle_2_player_id VARCHAR(20),               -- Player ID of the second player to make a solo tackle
                                solo_tackle_1_player_name VARCHAR(50),             -- Name of the first player to make a solo tackle
                                solo_tackle_2_player_name VARCHAR(50),             -- Name of the second player to make a solo tackle
                                assist_tackle_1_player_id VARCHAR(20),             -- Player ID of the first player to assist a tackle
                                assist_tackle_1_player_name VARCHAR(50),           -- Name of the first player to assist a tackle
                                assist_tackle_1_team VARCHAR(3),                   -- Team of the first player to assist a tackle
                                assist_tackle_2_player_id VARCHAR(20),             -- Player ID of the second player to assist a tackle
                                assist_tackle_2_player_name VARCHAR(50),           -- Name of the second player to assist a tackle
                                assist_tackle_2_team VARCHAR(3),                    -- Team of the second player to assist a tackle
                                assist_tackle_3_player_id VARCHAR(20),              -- Player ID of the third player to assist a tackle
                                assist_tackle_3_player_name VARCHAR(50),            -- Name of the third player to assist a tackle
                                assist_tackle_3_team VARCHAR(3),                    -- Team of the third player to assist a tackle
                                assist_tackle_4_player_id VARCHAR(20),              -- Player ID of the fourth player to assist a tackle
                                assist_tackle_4_player_name VARCHAR(50),            -- Name of the fourth player to assist a tackle
                                assist_tackle_4_team VARCHAR(3),                    -- Team of the fourth player to assist a tackle
                                tackle_with_assist BOOLEAN,                         -- Indicator for tackle with assist
                                tackle_with_assist_1_player_id VARCHAR(20),         -- Player ID of the first player involved in tackle with assist
                                tackle_with_assist_1_player_name VARCHAR(50),       -- Name of the first player involved in tackle with assist
                                tackle_with_assist_1_team VARCHAR(3),               -- Team of the first player involved in tackle with assist
                                tackle_with_assist_2_player_id VARCHAR(20),         -- Player ID of the second player involved in tackle with assist
                                tackle_with_assist_2_player_name VARCHAR(50),       -- Name of the second player involved in tackle with assist
                                tackle_with_assist_2_team VARCHAR(3),               -- Team of the second player involved in tackle with assist
                                pass_defense_1_player_id VARCHAR(20),               -- Player ID of the first player to defend a pass
                                pass_defense_1_player_name VARCHAR(50),             -- Name of the first player to defend a pass
                                pass_defense_2_player_id VARCHAR(20),               -- Player ID of the second player to defend a pass
                                pass_defense_2_player_name VARCHAR(50),             -- Name of the second player to defend a pass
                                fumbled_1_team VARCHAR(3),                          -- Team of the first player who fumbled
                                fumbled_1_player_id VARCHAR(20),                    -- Player ID of the first player who fumbled
                                fumbled_1_player_name VARCHAR(50),                  -- Name of the first player who fumbled
                                fumbled_2_player_id VARCHAR(20),                    -- Player ID of the second player who fumbled
                                fumbled_2_player_name VARCHAR(50),                  -- Name of the second player who fumbled
                                fumbled_2_team VARCHAR(3),                          -- Team of the second player who fumbled
                                fumble_recovery_1_team VARCHAR(3),                  -- Team of the first player to recover the fumble
                                fumble_recovery_1_yards INT,                        -- Yards gained after recovering the fumble
                                fumble_recovery_1_player_id VARCHAR(20),            -- Player ID of the first player to recover the fumble
                                fumble_recovery_1_player_name VARCHAR(50),         -- Name of the first player to recover the fumble
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT,
                                fumble_recovery_2_player_id INT,
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id INT,
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id INT,
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id INT,
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT,
                                penalty_team VARCHAR(255),
                                penalty_player_id INT,
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id INT,
                                season INT,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id INT,
                                play_clock TIME,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT,
                                fixed_drive INT,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIME,
                                drive_play_count INT,
                                drive_time_of_possession TIME,
                                drive_first_downs INT,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT,
                                drive_quarter_end INT,
                                drive_yards_penalized INT,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line INT,
                                drive_end_yard_line INT,
                                drive_play_id_started INT,
                                drive_play_id_ended INT,
                                away_score INT,
                                home_score INT,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id INT,
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer INT,
                                passer_jersey_number INT,
                                rusher INT,
                                rusher_jersey_number INT,
                                receiver INT,
                                receiver_jersey_number INT,
                                pass INT,
                                rush INT,
                                first_down BOOLEAN,
                                special INT,
                                play INT,
                                passer_id INT,
                                rusher_id INT,
                                receiver_id INT,
                                name VARCHAR(255),
                                jersey_number INT,
                                id INT,
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id INT,
                                fantasy BOOLEAN,
                                fantasy_id INT,
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success BOOLEAN,
                                xyac_fd INT,
                                xpass INT,
                                pass_oe INT,
                                    -- Player ID who scored the touchdown
                                    UNIQUE(game_id, play_id)
);

CREATE TABLE nfl_plays_2021 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(3),
                                away_team VARCHAR(3),
                                season_type VARCHAR(4),
                                week INT,
                                posteam VARCHAR(3),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(3),
                                side_of_field VARCHAR(3),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT,
                                half_seconds_remaining INT,
                                game_seconds_remaining INT,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT,
                                sp BOOLEAN,
                                qtr INT,
                                down INT,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT,
                                ydsnet INT,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT,
                                yards_after_catch INT,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT,
                                away_timeouts_remaining INT,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(3),
                                td_team VARCHAR(3),                 -- Team that scored the touchdown
                                td_player_name VARCHAR(50),         -- Player name who scored the touchdown
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT,
                                defteam_timeouts_remaining INT,
                                total_home_score INT,
                                total_away_score INT,
                                posteam_score INT,
                                no_score_prob NUMERIC,                    -- Probability of no score on the play
                                opp_fg_prob NUMERIC,                      -- Opponent field goal probability
                                opp_safety_prob NUMERIC,                  -- Opponent safety probability
                                opp_td_prob NUMERIC,                      -- Opponent touchdown probability
                                fg_prob NUMERIC,                          -- Field goal probability
                                safety_prob NUMERIC,                      -- Safety probability
                                td_prob NUMERIC,                          -- Touchdown probability
                                extra_point_prob NUMERIC,                 -- Extra point probability
                                two_point_conversion_prob NUMERIC,        -- Two-point conversion probability
                                ep NUMERIC,                               -- Expected points
                                epa NUMERIC,                              -- Expected points added
                                total_home_epa NUMERIC,                   -- Total EPA for the home team
                                total_away_epa NUMERIC,                   -- Total EPA for the away team
                                total_home_rush_epa NUMERIC,              -- Total rushing EPA for the home team
                                total_away_rush_epa NUMERIC,              -- Total rushing EPA for the away team
                                total_home_pass_epa NUMERIC,              -- Total passing EPA for the home team
                                total_away_pass_epa NUMERIC,              -- Total passing EPA for the away team
                                air_epa NUMERIC,                          -- Air yards EPA
                                yac_epa NUMERIC,                          -- Yards after catch EPA
                                comp_air_epa NUMERIC,                     -- Completed air yards EPA
                                comp_yac_epa NUMERIC,                     -- Completed yards after catch EPA
                                total_home_comp_air_epa NUMERIC,          -- Total home team completed air yards EPA
                                total_away_comp_air_epa NUMERIC,          -- Total away team completed air yards EPA
                                total_home_comp_yac_epa NUMERIC,          -- Total home team completed YAC EPA
                                total_away_comp_yac_epa NUMERIC,          -- Total away team completed YAC EPA
                                total_home_raw_air_epa NUMERIC,           -- Total home team raw air EPA
                                total_away_raw_air_epa NUMERIC,           -- Total away team raw air EPA
                                total_home_raw_yac_epa NUMERIC,           -- Total home team raw YAC EPA
                                total_away_raw_yac_epa NUMERIC,           -- Total away team raw YAC EPA
                                wp NUMERIC,                               -- Win probability
                                def_wp NUMERIC,                           -- Defensive win probability
                                home_wp NUMERIC,                          -- Home team win probability
                                away_wp NUMERIC,                          -- Away team win probability
                                wpa NUMERIC,                              -- Win probability added
                                vegas_wpa NUMERIC,                        -- Win probability added by Vegas odds
                                vegas_home_wpa NUMERIC,                   -- Home team Vegas WPA
                                home_wp_post NUMERIC,                     -- Home team win probability after the play
                                away_wp_post NUMERIC,                     -- Away team win probability after the play
                                vegas_wp NUMERIC,                         -- Vegas win probability
                                vegas_home_wp NUMERIC,                    -- Vegas home team win probability
                                total_home_rush_wpa NUMERIC,              -- Total home team rushing WPA
                                total_away_rush_wpa NUMERIC,              -- Total away team rushing WPA
                                total_home_pass_wpa NUMERIC,              -- Total home team passing WPA
                                total_away_pass_wpa NUMERIC,              -- Total away team passing WPA
                                air_wpa NUMERIC,                          -- Air yards WPA
                                yac_wpa NUMERIC,                          -- Yards after catch WPA
                                comp_air_wpa NUMERIC,                     -- Completed air yards WPA
                                comp_yac_wpa NUMERIC,                     -- Completed YAC WPA
                                total_home_comp_air_wpa NUMERIC,          -- Total home team completed air yards WPA
                                total_away_comp_air_wpa NUMERIC,          -- Total away team completed air yards WPA
                                total_home_comp_yac_wpa NUMERIC,          -- Total home team completed YAC WPA
                                total_away_comp_yac_wpa NUMERIC,          -- Total away team completed YAC WPA
                                total_home_raw_air_wpa NUMERIC,           -- Total home team raw air WPA
                                total_away_raw_air_wpa NUMERIC,           -- Total away team raw air WPA
                                total_home_raw_yac_wpa NUMERIC,           -- Total home team raw YAC WPA
                                total_away_raw_yac_wpa NUMERIC,           -- Total away team raw YAC WPA
                                punt_blocked BOOLEAN,                     -- Indicator for blocked punt
                                first_down_rush BOOLEAN,                  -- Indicator for first down by rush
                                first_down_pass BOOLEAN,                  -- Indicator for first down by pass
                                first_down_penalty BOOLEAN,               -- Indicator for first down by penalty
                                third_down_converted BOOLEAN,             -- Indicator for third down conversion
                                third_down_failed BOOLEAN,                -- Indicator for third down failure
                                fourth_down_converted BOOLEAN,            -- Indicator for fourth down conversion
                                fourth_down_failed BOOLEAN,               -- Indicator for fourth down failure
                                incomplete_pass BOOLEAN,                  -- Indicator for incomplete pass
                                touchback BOOLEAN,                        -- Indicator for touchback
                                interception BOOLEAN,                     -- Indicator for interception
                                punt_inside_twenty BOOLEAN,               -- Indicator for punt inside the 20-yard line
                                punt_in_endzone BOOLEAN,                  -- Indicator for punt in the endzone
                                punt_out_of_bounds BOOLEAN,               -- Indicator for punt out of bounds
                                punt_downed BOOLEAN,                      -- Indicator for downed punt
                                punt_fair_catch BOOLEAN,                  -- Indicator for fair catch on punt
                                kickoff_inside_twenty BOOLEAN,            -- Indicator for kickoff inside the 20-yard line
                                kickoff_in_endzone BOOLEAN,               -- Indicator for kickoff in the endzone
                                kickoff_out_of_bounds BOOLEAN,            -- Indicator for kickoff out of bounds
                                kickoff_downed BOOLEAN,                   -- Indicator for downed kickoff
                                kickoff_fair_catch BOOLEAN,               -- Indicator for fair catch on kickoff
                                fumble_forced BOOLEAN,                    -- Indicator for forced fumble
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,            -- Indicator if the fumble went out of bounds
                                solo_tackle INT,                         -- Count of solo tackles
                                safety BOOLEAN,                          -- Indicator for a safety
                                penalty BOOLEAN,                         -- Indicator for a penalty
                                tackled_for_loss BOOLEAN,                -- Indicator if the player was tackled for loss
                                fumble_lost BOOLEAN,                     -- Indicator if the fumble was lost
                                own_kickoff_recovery BOOLEAN,            -- Indicator if the team recovered their own kickoff
                                own_kickoff_recovery_td BOOLEAN,         -- Indicator if own kickoff recovery resulted in a TD
                                qb_hit BOOLEAN,                          -- Indicator if the quarterback was hit
                                rush_attempt BOOLEAN,                    -- Indicator if there was a rushing attempt
                                pass_attempt BOOLEAN,                    -- Indicator if there was a passing attempt
                                sack BOOLEAN,                            -- Indicator for a sack
                                touchdown BOOLEAN,                       -- Indicator for any type of touchdown
                                pass_touchdown BOOLEAN,                  -- Indicator for a passing touchdown
                                rush_touchdown BOOLEAN,                  -- Indicator for a rushing touchdown
                                return_touchdown BOOLEAN,                -- Indicator for a return touchdown
                                extra_point_attempt BOOLEAN,             -- Indicator for an extra point attempt
                                two_point_attempt BOOLEAN,               -- Indicator for a two-point attempt
                                field_goal_attempt BOOLEAN,              -- Indicator for a field goal attempt
                                kickoff_attempt BOOLEAN,                 -- Indicator for a kickoff attempt
                                punt_attempt BOOLEAN,                    -- Indicator for a punt attempt
                                fumble BOOLEAN,                          -- Indicator for a fumble
                                complete_pass BOOLEAN,                   -- Indicator for a completed pass
                                assist_tackle INT,                       -- Count of assisted tackles
                                lateral_reception BOOLEAN,               -- Indicator for a lateral reception
                                lateral_rush BOOLEAN,                    -- Indicator for a lateral rush
                                lateral_return BOOLEAN,                  -- Indicator for a lateral return
                                lateral_recovery BOOLEAN,                -- Indicator for a lateral recovery
                                passer_player_id VARCHAR(20),            -- Player ID of the passer
                                passer_player_name VARCHAR(50),          -- Name of the passer
                                passing_yards INT,                       -- Passing yards gained
                                receiver_player_id VARCHAR(20),          -- Player ID of the receiver
                                receiver_player_name VARCHAR(50),        -- Name of the receiver
                                receiving_yards INT,                     -- Receiving yards gained
                                rusher_player_id VARCHAR(20),            -- Player ID of the rusher
                                rusher_player_name VARCHAR(50),          -- Name of the rusher
                                rushing_yards INT,                       -- Rushing yards gained
                                lateral_receiver_player_id VARCHAR(20),  -- Player ID of the lateral receiver
                                lateral_receiver_player_name VARCHAR(50),-- Name of the lateral receiver
                                lateral_receiving_yards INT,              -- Receiving yards from lateral play
                                lateral_rusher_player_id VARCHAR(20),          -- Player ID of the lateral rusher
                                lateral_rusher_player_name VARCHAR(50),        -- Name of the lateral rusher
                                lateral_rushing_yards INT,                     -- Rushing yards from lateral play
                                lateral_sack_player_id VARCHAR(20),            -- Player ID of the lateral sack
                                lateral_sack_player_name VARCHAR(50),          -- Name of the lateral sack
                                interception_player_id VARCHAR(20),            -- Player ID of the player making the interception
                                interception_player_name VARCHAR(50),          -- Name of the player making the interception
                                lateral_interception_player_id VARCHAR(20),    -- Player ID of the lateral interception
                                lateral_interception_player_name VARCHAR(50),  -- Name of the lateral interception player
                                punt_returner_player_id VARCHAR(20),           -- Player ID of the punt returner
                                punt_returner_player_name VARCHAR(50),         -- Name of the punt returner
                                lateral_punt_returner_player_id VARCHAR(20),   -- Player ID of the lateral punt returner
                                lateral_punt_returner_player_name VARCHAR(50), -- Name of the lateral punt returner
                                kickoff_returner_player_name VARCHAR(50),      -- Name of the kickoff returner
                                kickoff_returner_player_id VARCHAR(20),        -- Player ID of the kickoff returner
                                lateral_kickoff_returner_player_id VARCHAR(20),-- Player ID of the lateral kickoff returner
                                lateral_kickoff_returner_player_name VARCHAR(50),-- Name of the lateral kickoff returner
                                punter_player_id VARCHAR(20),                  -- Player ID of the punter
                                punter_player_name VARCHAR(50),                -- Name of the punter
                                kicker_player_name VARCHAR(50),                -- Name of the kicker
                                kicker_player_id VARCHAR(20),                  -- Player ID of the kicker
                                own_kickoff_recovery_player_id VARCHAR(20),    -- Player ID of the player recovering own kickoff
                                own_kickoff_recovery_player_name VARCHAR(50),  -- Name of the player recovering own kickoff
                                blocked_player_id VARCHAR(20),                 -- Player ID of the player who blocked a play
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),           -- Player ID of the first player to tackle for loss
                                tackle_for_loss_1_player_name VARCHAR(50),         -- Name of the first player to tackle for loss
                                tackle_for_loss_2_player_id VARCHAR(20),           -- Player ID of the second player to tackle for loss
                                tackle_for_loss_2_player_name VARCHAR(50),         -- Name of the second player to tackle for loss
                                qb_hit_1_player_id VARCHAR(20),                    -- Player ID of the first player to hit the QB
                                qb_hit_1_player_name VARCHAR(50),                  -- Name of the first player to hit the QB
                                qb_hit_2_player_id VARCHAR(20),                    -- Player ID of the second player to hit the QB
                                qb_hit_2_player_name VARCHAR(50),                  -- Name of the second player to hit the QB
                                forced_fumble_player_1_team VARCHAR(3),            -- Team of the first forced fumble player
                                forced_fumble_player_1_player_id VARCHAR(20),      -- Player ID of the first forced fumble player
                                forced_fumble_player_1_player_name VARCHAR(50),    -- Name of the first forced fumble player
                                forced_fumble_player_2_team VARCHAR(3),            -- Team of the second forced fumble player
                                forced_fumble_player_2_player_id VARCHAR(20),      -- Player ID of the second forced fumble player
                                forced_fumble_player_2_player_name VARCHAR(50),    -- Name of the second forced fumble player
                                solo_tackle_1_team VARCHAR(3),                     -- Team of the first player to make a solo tackle
                                solo_tackle_2_team VARCHAR(3),                     -- Team of the second player to make a solo tackle
                                solo_tackle_1_player_id VARCHAR(20),               -- Player ID of the first player to make a solo tackle
                                solo_tackle_2_player_id VARCHAR(20),               -- Player ID of the second player to make a solo tackle
                                solo_tackle_1_player_name VARCHAR(50),             -- Name of the first player to make a solo tackle
                                solo_tackle_2_player_name VARCHAR(50),             -- Name of the second player to make a solo tackle
                                assist_tackle_1_player_id VARCHAR(20),             -- Player ID of the first player to assist a tackle
                                assist_tackle_1_player_name VARCHAR(50),           -- Name of the first player to assist a tackle
                                assist_tackle_1_team VARCHAR(3),                   -- Team of the first player to assist a tackle
                                assist_tackle_2_player_id VARCHAR(20),             -- Player ID of the second player to assist a tackle
                                assist_tackle_2_player_name VARCHAR(50),           -- Name of the second player to assist a tackle
                                assist_tackle_2_team VARCHAR(3),                    -- Team of the second player to assist a tackle
                                assist_tackle_3_player_id VARCHAR(20),              -- Player ID of the third player to assist a tackle
                                assist_tackle_3_player_name VARCHAR(50),            -- Name of the third player to assist a tackle
                                assist_tackle_3_team VARCHAR(3),                    -- Team of the third player to assist a tackle
                                assist_tackle_4_player_id VARCHAR(20),              -- Player ID of the fourth player to assist a tackle
                                assist_tackle_4_player_name VARCHAR(50),            -- Name of the fourth player to assist a tackle
                                assist_tackle_4_team VARCHAR(3),                    -- Team of the fourth player to assist a tackle
                                tackle_with_assist BOOLEAN,                         -- Indicator for tackle with assist
                                tackle_with_assist_1_player_id VARCHAR(20),         -- Player ID of the first player involved in tackle with assist
                                tackle_with_assist_1_player_name VARCHAR(50),       -- Name of the first player involved in tackle with assist
                                tackle_with_assist_1_team VARCHAR(3),               -- Team of the first player involved in tackle with assist
                                tackle_with_assist_2_player_id VARCHAR(20),         -- Player ID of the second player involved in tackle with assist
                                tackle_with_assist_2_player_name VARCHAR(50),       -- Name of the second player involved in tackle with assist
                                tackle_with_assist_2_team VARCHAR(3),               -- Team of the second player involved in tackle with assist
                                pass_defense_1_player_id VARCHAR(20),               -- Player ID of the first player to defend a pass
                                pass_defense_1_player_name VARCHAR(50),             -- Name of the first player to defend a pass
                                pass_defense_2_player_id VARCHAR(20),               -- Player ID of the second player to defend a pass
                                pass_defense_2_player_name VARCHAR(50),             -- Name of the second player to defend a pass
                                fumbled_1_team VARCHAR(3),                          -- Team of the first player who fumbled
                                fumbled_1_player_id VARCHAR(20),                    -- Player ID of the first player who fumbled
                                fumbled_1_player_name VARCHAR(50),                  -- Name of the first player who fumbled
                                fumbled_2_player_id VARCHAR(20),                    -- Player ID of the second player who fumbled
                                fumbled_2_player_name VARCHAR(50),                  -- Name of the second player who fumbled
                                fumbled_2_team VARCHAR(3),                          -- Team of the second player who fumbled
                                fumble_recovery_1_team VARCHAR(3),                  -- Team of the first player to recover the fumble
                                fumble_recovery_1_yards INT,                        -- Yards gained after recovering the fumble
                                fumble_recovery_1_player_id VARCHAR(20),            -- Player ID of the first player to recover the fumble
                                fumble_recovery_1_player_name VARCHAR(50),         -- Name of the first player to recover the fumble
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT,
                                fumble_recovery_2_player_id INT,
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id INT,
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id INT,
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id INT,
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT,
                                penalty_team VARCHAR(255),
                                penalty_player_id INT,
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id INT,
                                season INT,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id INT,
                                play_clock TIME,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT,
                                fixed_drive INT,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIME,
                                drive_play_count INT,
                                drive_time_of_possession TIME,
                                drive_first_downs INT,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT,
                                drive_quarter_end INT,
                                drive_yards_penalized INT,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line INT,
                                drive_end_yard_line INT,
                                drive_play_id_started INT,
                                drive_play_id_ended INT,
                                away_score INT,
                                home_score INT,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id INT,
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer INT,
                                passer_jersey_number INT,
                                rusher INT,
                                rusher_jersey_number INT,
                                receiver INT,
                                receiver_jersey_number INT,
                                pass INT,
                                rush INT,
                                first_down BOOLEAN,
                                special INT,
                                play INT,
                                passer_id INT,
                                rusher_id INT,
                                receiver_id INT,
                                name VARCHAR(255),
                                jersey_number INT,
                                id INT,
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id INT,
                                fantasy BOOLEAN,
                                fantasy_id INT,
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success BOOLEAN,
                                xyac_fd INT,
                                xpass INT,
                                pass_oe INT,
                                    -- Player ID who scored the touchdown
                                    UNIQUE(game_id, play_id)
);

CREATE TABLE nfl_plays_2022 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(3),
                                away_team VARCHAR(3),
                                season_type VARCHAR(4),
                                week INT,
                                posteam VARCHAR(3),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(3),
                                side_of_field VARCHAR(3),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT,
                                half_seconds_remaining INT,
                                game_seconds_remaining INT,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT,
                                sp BOOLEAN,
                                qtr INT,
                                down INT,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT,
                                ydsnet INT,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT,
                                yards_after_catch INT,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT,
                                away_timeouts_remaining INT,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(3),
                                td_team VARCHAR(3),
                                td_player_name VARCHAR(50),
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT,
                                defteam_timeouts_remaining INT,
                                total_home_score INT,
                                total_away_score INT,
                                posteam_score INT,
                                no_score_prob NUMERIC,
                                opp_fg_prob NUMERIC,
                                opp_safety_prob NUMERIC,
                                opp_td_prob NUMERIC,
                                fg_prob NUMERIC,
                                safety_prob NUMERIC,
                                td_prob NUMERIC,
                                extra_point_prob NUMERIC,
                                two_point_conversion_prob NUMERIC,
                                ep NUMERIC,
                                epa NUMERIC,
                                total_home_epa NUMERIC,
                                total_away_epa NUMERIC,
                                total_home_rush_epa NUMERIC,
                                total_away_rush_epa NUMERIC,
                                total_home_pass_epa NUMERIC,
                                total_away_pass_epa NUMERIC,
                                air_epa NUMERIC,
                                yac_epa NUMERIC,
                                comp_air_epa NUMERIC,
                                comp_yac_epa NUMERIC,
                                total_home_comp_air_epa NUMERIC,
                                total_away_comp_air_epa NUMERIC,
                                total_home_comp_yac_epa NUMERIC,
                                total_away_comp_yac_epa NUMERIC,
                                total_home_raw_air_epa NUMERIC,
                                total_away_raw_air_epa NUMERIC,
                                total_home_raw_yac_epa NUMERIC,
                                total_away_raw_yac_epa NUMERIC,
                                wp NUMERIC,
                                def_wp NUMERIC,
                                home_wp NUMERIC,
                                away_wp NUMERIC,
                                wpa NUMERIC,
                                vegas_wpa NUMERIC,
                                vegas_home_wpa NUMERIC,
                                home_wp_post NUMERIC,
                                away_wp_post NUMERIC,
                                vegas_wp NUMERIC,
                                vegas_home_wp NUMERIC,
                                total_home_rush_wpa NUMERIC,
                                total_away_rush_wpa NUMERIC,
                                total_home_pass_wpa NUMERIC,
                                total_away_pass_wpa NUMERIC,
                                air_wpa NUMERIC,
                                yac_wpa NUMERIC,
                                comp_air_wpa NUMERIC,
                                comp_yac_wpa NUMERIC,
                                total_home_comp_air_wpa NUMERIC,
                                total_away_comp_air_wpa NUMERIC,
                                total_home_comp_yac_wpa NUMERIC,
                                total_away_comp_yac_wpa NUMERIC,
                                total_home_raw_air_wpa NUMERIC,
                                total_away_raw_air_wpa NUMERIC,
                                total_home_raw_yac_wpa NUMERIC,
                                total_away_raw_yac_wpa NUMERIC,
                                punt_blocked BOOLEAN,
                                first_down_rush BOOLEAN,
                                first_down_pass BOOLEAN,
                                first_down_penalty BOOLEAN,
                                third_down_converted BOOLEAN,
                                third_down_failed BOOLEAN,
                                fourth_down_converted BOOLEAN,
                                fourth_down_failed BOOLEAN,
                                incomplete_pass BOOLEAN,
                                touchback BOOLEAN,
                                interception BOOLEAN,
                                punt_inside_twenty BOOLEAN,
                                punt_in_endzone BOOLEAN,
                                punt_out_of_bounds BOOLEAN,
                                punt_downed BOOLEAN,
                                punt_fair_catch BOOLEAN,
                                kickoff_inside_twenty BOOLEAN,
                                kickoff_in_endzone BOOLEAN,
                                kickoff_out_of_bounds BOOLEAN,
                                kickoff_downed BOOLEAN,
                                kickoff_fair_catch BOOLEAN,
                                fumble_forced BOOLEAN,
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,
                                solo_tackle INT,
                                safety BOOLEAN,
                                penalty BOOLEAN,
                                tackled_for_loss BOOLEAN,
                                fumble_lost BOOLEAN,
                                own_kickoff_recovery BOOLEAN,
                                own_kickoff_recovery_td BOOLEAN,
                                qb_hit BOOLEAN,
                                rush_attempt BOOLEAN,
                                pass_attempt BOOLEAN,
                                sack BOOLEAN,
                                touchdown BOOLEAN,
                                pass_touchdown BOOLEAN,
                                rush_touchdown BOOLEAN,
                                return_touchdown BOOLEAN,
                                extra_point_attempt BOOLEAN,
                                two_point_attempt BOOLEAN,
                                field_goal_attempt BOOLEAN,
                                kickoff_attempt BOOLEAN,
                                punt_attempt BOOLEAN,
                                fumble BOOLEAN,
                                complete_pass BOOLEAN,
                                assist_tackle INT,
                                lateral_reception BOOLEAN,
                                lateral_rush BOOLEAN,
                                lateral_return BOOLEAN,
                                lateral_recovery BOOLEAN,
                                passer_player_id VARCHAR(20),
                                passer_player_name VARCHAR(50),
                                passing_yards INT,
                                receiver_player_id VARCHAR(20),
                                receiver_player_name VARCHAR(50),
                                receiving_yards INT,
                                rusher_player_id VARCHAR(20),
                                rusher_player_name VARCHAR(50),
                                rushing_yards INT,
                                lateral_receiver_player_id VARCHAR(20),
                                lateral_receiver_player_name VARCHAR(50),
                                lateral_receiving_yards INT,
                                lateral_rusher_player_id VARCHAR(20),
                                lateral_rusher_player_name VARCHAR(50),
                                lateral_rushing_yards INT,
                                lateral_sack_player_id VARCHAR(20),
                                lateral_sack_player_name VARCHAR(50),
                                interception_player_id VARCHAR(20),
                                interception_player_name VARCHAR(50),
                                lateral_interception_player_id VARCHAR(20),
                                lateral_interception_player_name VARCHAR(50),
                                punt_returner_player_id VARCHAR(20),
                                punt_returner_player_name VARCHAR(50),
                                lateral_punt_returner_player_id VARCHAR(20),
                                lateral_punt_returner_player_name VARCHAR(50),
                                kickoff_returner_player_name VARCHAR(50),
                                kickoff_returner_player_id VARCHAR(20),
                                lateral_kickoff_returner_player_id VARCHAR(20),
                                lateral_kickoff_returner_player_name VARCHAR(50),
                                punter_player_id VARCHAR(20),
                                punter_player_name VARCHAR(50),
                                kicker_player_name VARCHAR(50),
                                kicker_player_id VARCHAR(20),
                                own_kickoff_recovery_player_id VARCHAR(20),
                                own_kickoff_recovery_player_name VARCHAR(50),
                                blocked_player_id VARCHAR(20),
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),
                                tackle_for_loss_1_player_name VARCHAR(50),
                                tackle_for_loss_2_player_id VARCHAR(20),
                                tackle_for_loss_2_player_name VARCHAR(50),
                                qb_hit_1_player_id VARCHAR(20),
                                qb_hit_1_player_name VARCHAR(50),
                                qb_hit_2_player_id VARCHAR(20),
                                qb_hit_2_player_name VARCHAR(50),
                                forced_fumble_player_1_team VARCHAR(3),
                                forced_fumble_player_1_player_id VARCHAR(20),
                                forced_fumble_player_1_player_name VARCHAR(50),
                                forced_fumble_player_2_team VARCHAR(3),
                                forced_fumble_player_2_player_id VARCHAR(20),
                                forced_fumble_player_2_player_name VARCHAR(50),
                                solo_tackle_1_team VARCHAR(3),
                                solo_tackle_2_team VARCHAR(3),
                                solo_tackle_1_player_id VARCHAR(20),
                                solo_tackle_2_player_id VARCHAR(20),
                                solo_tackle_1_player_name VARCHAR(50),
                                solo_tackle_2_player_name VARCHAR(50),
                                assist_tackle_1_player_id VARCHAR(20),
                                assist_tackle_1_player_name VARCHAR(50),
                                assist_tackle_1_team VARCHAR(3),
                                assist_tackle_2_player_id VARCHAR(20),
                                assist_tackle_2_player_name VARCHAR(50),
                                assist_tackle_2_team VARCHAR(3),
                                assist_tackle_3_player_id VARCHAR(20),
                                assist_tackle_3_player_name VARCHAR(50),
                                assist_tackle_3_team VARCHAR(3),
                                assist_tackle_4_player_id VARCHAR(20),
                                assist_tackle_4_player_name VARCHAR(50),
                                assist_tackle_4_team VARCHAR(3),
                                tackle_with_assist BOOLEAN,
                                tackle_with_assist_1_player_id VARCHAR(20),
                                tackle_with_assist_1_player_name VARCHAR(50),
                                tackle_with_assist_1_team VARCHAR(3),
                                tackle_with_assist_2_player_id VARCHAR(20),
                                tackle_with_assist_2_player_name VARCHAR(50),
                                tackle_with_assist_2_team VARCHAR(3),
                                pass_defense_1_player_id VARCHAR(20),
                                pass_defense_1_player_name VARCHAR(50),
                                pass_defense_2_player_id VARCHAR(20),
                                pass_defense_2_player_name VARCHAR(50),
                                fumbled_1_team VARCHAR(3),
                                fumbled_1_player_id VARCHAR(20),
                                fumbled_1_player_name VARCHAR(50),
                                fumbled_2_player_id VARCHAR(20),
                                fumbled_2_player_name VARCHAR(50),
                                fumbled_2_team VARCHAR(3),
                                fumble_recovery_1_team VARCHAR(3),
                                fumble_recovery_1_yards INT,
                                fumble_recovery_1_player_id VARCHAR(20),
                                fumble_recovery_1_player_name VARCHAR(50),
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT,
                                fumble_recovery_2_player_id INT,
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id INT,
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id INT,
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id INT,
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT,
                                penalty_team VARCHAR(255),
                                penalty_player_id INT,
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id INT,
                                season INT,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id INT,
                                play_clock TIME,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT,
                                fixed_drive INT,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIME,
                                drive_play_count INT,
                                drive_time_of_possession TIME,
                                drive_first_downs INT,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT,
                                drive_quarter_end INT,
                                drive_yards_penalized INT,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line INT,
                                drive_end_yard_line INT,
                                drive_play_id_started INT,
                                drive_play_id_ended INT,
                                away_score INT,
                                home_score INT,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id INT,
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer INT,
                                passer_jersey_number INT,
                                rusher INT,
                                rusher_jersey_number INT,
                                receiver INT,
                                receiver_jersey_number INT,
                                pass INT,
                                rush INT,
                                first_down BOOLEAN,
                                special INT,
                                play INT,
                                passer_id INT,
                                rusher_id INT,
                                receiver_id INT,
                                name VARCHAR(255),
                                jersey_number INT,
                                id INT,
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id INT,
                                fantasy BOOLEAN,
                                fantasy_id INT,
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success BOOLEAN,
                                xyac_fd INT,
                                xpass INT,
                                pass_oe INT,
                                UNIQUE(game_id, play_id)
);
CREATE TABLE quarterback_stats (
                                   player_id VARCHAR(20) PRIMARY KEY,
                                   player_name VARCHAR(50),
                                   team VARCHAR(6),
                                   season INT,

    -- Passing Stats
                                   pass_yards INT DEFAULT 0,
                                   pass_attempts INT DEFAULT 0,
                                   completions INT DEFAULT 0,
                                   pass_touchdowns INT DEFAULT 0,
                                   interceptions_thrown INT DEFAULT 0,
                                   sacks_taken INT DEFAULT 0,
                                   sack_yards_lost INT DEFAULT 0,
                                   pass_first_downs INT DEFAULT 0,
                                   yards_per_attempt FLOAT DEFAULT 0,
                                   pass_20_plus INT DEFAULT 0, -- Passes for 20+ yards
                                   pass_40_plus INT DEFAULT 0, -- Passes for 40+ yards
                                   pass_longest INT DEFAULT 0   -- Longest pass
);
CREATE TABLE runningback_stats (
                                   player_id VARCHAR(20) PRIMARY KEY,
                                   player_name VARCHAR(50),
                                   team VARCHAR(6),
                                   season INT,

    -- Rushing Stats
                                   rush_yards INT DEFAULT 0,
                                   rush_attempts INT DEFAULT 0,
                                   rush_touchdowns INT DEFAULT 0,
                                   rush_20_plus INT DEFAULT 0,  -- Rushes for 20+ yards
                                   rush_40_plus INT DEFAULT 0,  -- Rushes for 40+ yards
                                   rush_longest INT DEFAULT 0,  -- Longest rush
                                   rush_first_downs INT DEFAULT 0,
                                   rush_fumbles INT DEFAULT 0
);
CREATE TABLE receiver_stats (
                                player_id VARCHAR(20) PRIMARY KEY,
                                player_name VARCHAR(50),
                                team VARCHAR(6),
                                season INT,

    -- Receiving Stats
                                receptions INT DEFAULT 0,
                                receiving_yards INT DEFAULT 0,
                                receiving_touchdowns INT DEFAULT 0,
                                receiving_20_plus INT DEFAULT 0,  -- Receptions for 20+ yards
                                receiving_40_plus INT DEFAULT 0,  -- Receptions for 40+ yards
                                receiving_longest INT DEFAULT 0,  -- Longest reception
                                receiving_first_downs INT DEFAULT 0,
                                receiving_fumbles INT DEFAULT 0,
                                receiving_yac INT DEFAULT 0,  -- Yards after catch
                                receiving_targets INT DEFAULT 0
);
CREATE TABLE tight_end_stats (
                                player_id VARCHAR(20) PRIMARY KEY,
                                player_name VARCHAR(50),
                                team VARCHAR(6),
                                season INT,

    -- Receiving Stats (Similar to WRs)
                                receptions INT DEFAULT 0,
                                receiving_yards INT DEFAULT 0,
                                receiving_touchdowns INT DEFAULT 0,
                                receiving_20_plus INT DEFAULT 0,  -- Receptions for 20+ yards
                                receiving_40_plus INT DEFAULT 0,  -- Receptions for 40+ yards
                                receiving_longest INT DEFAULT 0,  -- Longest reception
                                receiving_first_downs INT DEFAULT 0,
                                receiving_fumbles INT DEFAULT 0,
                                receiving_yac INT DEFAULT 0,  -- Yards after catch
                                receiving_targets INT DEFAULT 0,

    -- Additional TE-specific stats (if needed)
                                blocking_snaps INT DEFAULT 0,   -- Number of blocking snaps
                                blocking_efficiency FLOAT DEFAULT 0, -- Efficiency in blocking (if tracked)
                                pass_protection INT DEFAULT 0,  -- Pass protection snaps or percentage
                                run_blocking INT DEFAULT 0      -- Run-blocking snaps or percentage
);

CREATE TABLE defensive_player_stats (
                                        player_id VARCHAR(20) PRIMARY KEY,
                                        player_name VARCHAR(50),
                                        team VARCHAR(6),
                                        season INT,

    -- Defensive Stats
                                        combined_tackles INT DEFAULT 0,
                                        solo_tackles INT DEFAULT 0,
                                        assisted_tackles INT DEFAULT 0,
                                        sacks FLOAT DEFAULT 0, -- Allows for half sacks (e.g., 1.5 sacks)
                                        forced_fumbles INT DEFAULT 0,
                                        fumble_recoveries INT DEFAULT 0,
                                        fumble_recovery_touchdowns INT DEFAULT 0,
                                        interceptions INT DEFAULT 0,
                                        interception_touchdowns INT DEFAULT 0,
                                        interception_return_yards INT DEFAULT 0,
                                        interception_longest INT DEFAULT 0 -- Longest interception return
);
CREATE TABLE kicker_stats (
                              player_id VARCHAR(20) PRIMARY KEY,
                              player_name VARCHAR(50),
                              team VARCHAR(6),
                              season INT,

    -- Kicking Stats
                              field_goals_made INT DEFAULT 0,
                              field_goal_attempts INT DEFAULT 0,
                              field_goal_percentage FLOAT DEFAULT 0,
                              field_goals_1_19 VARCHAR(10),  -- Format: 'A-M' for attempts/made
                              field_goals_20_29 VARCHAR(10), -- Format: 'A-M'
                              field_goals_30_39 VARCHAR(10), -- Format: 'A-M'
                              field_goals_40_49 VARCHAR(10), -- Format: 'A-M'
                              field_goals_50_plus VARCHAR(10), -- Format: 'A-M'
                              longest_field_goal INT DEFAULT 0,
                              extra_points_made INT DEFAULT 0,
                              extra_point_attempts INT DEFAULT 0,
                              field_goals_blocked INT DEFAULT 0
);
CREATE TABLE punter_stats (
                              player_id VARCHAR(20) PRIMARY KEY,
                              player_name VARCHAR(50),
                              team VARCHAR(6),
                              season INT,

    -- Punting Stats
                              punt_average FLOAT DEFAULT 0,
                              net_punt_average FLOAT DEFAULT 0,
                              punt_yards INT DEFAULT 0,
                              punts INT DEFAULT 0,
                              punt_longest INT DEFAULT 0,
                              punts_inside_20 INT DEFAULT 0,
                              punt_touchbacks INT DEFAULT 0,
                              punt_fair_catches INT DEFAULT 0,
                              punts_blocked INT DEFAULT 0
);
CREATE TABLE returner_stats (
                                player_id VARCHAR(20) PRIMARY KEY,
                                player_name VARCHAR(50),
                                team VARCHAR(6),
                                season INT,

    -- Kick Return Stats
                                kick_returns INT DEFAULT 0,
                                kick_return_yards INT DEFAULT 0,
                                kick_return_touchdowns INT DEFAULT 0,
                                kick_return_longest INT DEFAULT 0,
                                kick_return_fumbles INT DEFAULT 0,

    -- Punt Return Stats
                                punt_returns INT DEFAULT 0,
                                punt_return_yards INT DEFAULT 0,
                                punt_return_touchdowns INT DEFAULT 0,
                                punt_return_longest INT DEFAULT 0,
                                punt_return_fumbles INT DEFAULT 0
);

CREATE TABLE nfl_plays_2023 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(6),
                                away_team VARCHAR(6),
                                season_type VARCHAR(6),
                                week INT NULL,
                                posteam VARCHAR(6),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(6),
                                side_of_field VARCHAR(6),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT NULL,
                                half_seconds_remaining INT NULL,
                                game_seconds_remaining INT NULL,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT NULL,
                                sp BOOLEAN,
                                qtr INT NULL,
                                down INT NULL,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT NULL,
                                ydsnet INT NULL,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT NULL,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT NULL,
                                yards_after_catch INT NULL,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT NULL,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT NULL,
                                away_timeouts_remaining INT NULL,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(6),
                                td_team VARCHAR(6),
                                td_player_name VARCHAR(50),
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT NULL,
                                defteam_timeouts_remaining INT NULL,
                                total_home_score INT NULL,
                                total_away_score INT NULL,
                                posteam_score INT NULL,
                                defteam_score INT NULL,
                                score_differential INT NULL,
                                posteam_score_post INT NULL,
                                defteam_score_post INT NULL,
                                score_differential_post INT NULL,
                                no_score_prob NUMERIC,
                                opp_fg_prob NUMERIC,
                                opp_safety_prob NUMERIC,
                                opp_td_prob NUMERIC,
                                fg_prob NUMERIC,
                                safety_prob NUMERIC,
                                td_prob NUMERIC,
                                extra_point_prob NUMERIC,
                                two_point_conversion_prob NUMERIC,
                                ep NUMERIC,
                                epa NUMERIC,
                                total_home_epa NUMERIC,
                                total_away_epa NUMERIC,
                                total_home_rush_epa NUMERIC,
                                total_away_rush_epa NUMERIC,
                                total_home_pass_epa NUMERIC,
                                total_away_pass_epa NUMERIC,
                                air_epa NUMERIC,
                                yac_epa NUMERIC,
                                comp_air_epa NUMERIC,
                                comp_yac_epa NUMERIC,
                                total_home_comp_air_epa NUMERIC,
                                total_away_comp_air_epa NUMERIC,
                                total_home_comp_yac_epa NUMERIC,
                                total_away_comp_yac_epa NUMERIC,
                                total_home_raw_air_epa NUMERIC,
                                total_away_raw_air_epa NUMERIC,
                                total_home_raw_yac_epa NUMERIC,
                                total_away_raw_yac_epa NUMERIC,
                                wp NUMERIC,
                                def_wp NUMERIC,
                                home_wp NUMERIC,
                                away_wp NUMERIC,
                                wpa NUMERIC,
                                vegas_wpa NUMERIC,
                                vegas_home_wpa NUMERIC,
                                home_wp_post NUMERIC,
                                away_wp_post NUMERIC,
                                vegas_wp NUMERIC,
                                vegas_home_wp NUMERIC,
                                total_home_rush_wpa NUMERIC,
                                total_away_rush_wpa NUMERIC,
                                total_home_pass_wpa NUMERIC,
                                total_away_pass_wpa NUMERIC,
                                air_wpa NUMERIC,
                                yac_wpa NUMERIC,
                                comp_air_wpa NUMERIC,
                                comp_yac_wpa NUMERIC,
                                total_home_comp_air_wpa NUMERIC,
                                total_away_comp_air_wpa NUMERIC,
                                total_home_comp_yac_wpa NUMERIC,
                                total_away_comp_yac_wpa NUMERIC,
                                total_home_raw_air_wpa NUMERIC,
                                total_away_raw_air_wpa NUMERIC,
                                total_home_raw_yac_wpa NUMERIC,
                                total_away_raw_yac_wpa NUMERIC,
                                punt_blocked BOOLEAN,
                                first_down_rush BOOLEAN,
                                first_down_pass BOOLEAN,
                                first_down_penalty BOOLEAN,
                                third_down_converted BOOLEAN,
                                third_down_failed BOOLEAN,
                                fourth_down_converted BOOLEAN,
                                fourth_down_failed BOOLEAN,
                                incomplete_pass BOOLEAN,
                                touchback BOOLEAN,
                                interception BOOLEAN,
                                punt_inside_twenty BOOLEAN,
                                punt_in_endzone BOOLEAN,
                                punt_out_of_bounds BOOLEAN,
                                punt_downed BOOLEAN,
                                punt_fair_catch BOOLEAN,
                                kickoff_inside_twenty BOOLEAN,
                                kickoff_in_endzone BOOLEAN,
                                kickoff_out_of_bounds BOOLEAN,
                                kickoff_downed BOOLEAN,
                                kickoff_fair_catch BOOLEAN,
                                fumble_forced BOOLEAN,
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,
                                solo_tackle INT,
                                safety BOOLEAN,
                                penalty BOOLEAN,
                                tackled_for_loss BOOLEAN,
                                fumble_lost BOOLEAN,
                                own_kickoff_recovery BOOLEAN,
                                own_kickoff_recovery_td BOOLEAN,
                                qb_hit BOOLEAN,
                                rush_attempt BOOLEAN,
                                pass_attempt BOOLEAN,
                                sack BOOLEAN,
                                touchdown BOOLEAN,
                                pass_touchdown BOOLEAN,
                                rush_touchdown BOOLEAN,
                                return_touchdown BOOLEAN,
                                extra_point_attempt BOOLEAN,
                                two_point_attempt BOOLEAN,
                                field_goal_attempt BOOLEAN,
                                kickoff_attempt BOOLEAN,
                                punt_attempt BOOLEAN,
                                fumble BOOLEAN,
                                complete_pass BOOLEAN,
                                assist_tackle INT NULL,
                                lateral_reception BOOLEAN,
                                lateral_rush BOOLEAN,
                                lateral_return BOOLEAN,
                                lateral_recovery BOOLEAN,
                                passer_player_id VARCHAR(20),
                                passer_player_name VARCHAR(50),
                                passing_yards INT NULL,
                                receiver_player_id VARCHAR(20),
                                receiver_player_name VARCHAR(50),
                                receiving_yards INT NULL,
                                rusher_player_id VARCHAR(20),
                                rusher_player_name VARCHAR(50),
                                rushing_yards INT NULL,
                                lateral_receiver_player_id VARCHAR(20),
                                lateral_receiver_player_name VARCHAR(50),
                                lateral_receiving_yards INT NULL,
                                lateral_rusher_player_id VARCHAR(20),
                                lateral_rusher_player_name VARCHAR(50),
                                lateral_rushing_yards INT NULL,
                                lateral_sack_player_id VARCHAR(20),
                                lateral_sack_player_name VARCHAR(50),
                                interception_player_id VARCHAR(20),
                                interception_player_name VARCHAR(50),
                                lateral_interception_player_id VARCHAR(20),
                                lateral_interception_player_name VARCHAR(50),
                                punt_returner_player_id VARCHAR(20),
                                punt_returner_player_name VARCHAR(50),
                                lateral_punt_returner_player_id VARCHAR(20),
                                lateral_punt_returner_player_name VARCHAR(50),
                                kickoff_returner_player_name VARCHAR(50),
                                kickoff_returner_player_id VARCHAR(20),
                                lateral_kickoff_returner_player_id VARCHAR(20),
                                lateral_kickoff_returner_player_name VARCHAR(50),
                                punter_player_id VARCHAR(20),
                                punter_player_name VARCHAR(50),
                                kicker_player_name VARCHAR(50),
                                kicker_player_id VARCHAR(20),
                                own_kickoff_recovery_player_id VARCHAR(20),
                                own_kickoff_recovery_player_name VARCHAR(50),
                                blocked_player_id VARCHAR(20),
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),
                                tackle_for_loss_1_player_name VARCHAR(50),
                                tackle_for_loss_2_player_id VARCHAR(20),
                                tackle_for_loss_2_player_name VARCHAR(50),
                                qb_hit_1_player_id VARCHAR(20),
                                qb_hit_1_player_name VARCHAR(50),
                                qb_hit_2_player_id VARCHAR(20),
                                qb_hit_2_player_name VARCHAR(50),
                                forced_fumble_player_1_team VARCHAR(6),
                                forced_fumble_player_1_player_id VARCHAR(20),
                                forced_fumble_player_1_player_name VARCHAR(50),
                                forced_fumble_player_2_team VARCHAR(6),
                                forced_fumble_player_2_player_id VARCHAR(20),
                                forced_fumble_player_2_player_name VARCHAR(50),
                                solo_tackle_1_team VARCHAR(6),
                                solo_tackle_2_team VARCHAR(6),
                                solo_tackle_1_player_id VARCHAR(20),
                                solo_tackle_2_player_id VARCHAR(20),
                                solo_tackle_1_player_name VARCHAR(50),
                                solo_tackle_2_player_name VARCHAR(50),
                                assist_tackle_1_player_id VARCHAR(20),
                                assist_tackle_1_player_name VARCHAR(50),
                                assist_tackle_1_team VARCHAR(6),
                                assist_tackle_2_player_id VARCHAR(20),
                                assist_tackle_2_player_name VARCHAR(50),
                                assist_tackle_2_team VARCHAR(6),
                                assist_tackle_3_player_id VARCHAR(20),
                                assist_tackle_3_player_name VARCHAR(50),
                                assist_tackle_3_team VARCHAR(6),
                                assist_tackle_4_player_id VARCHAR(20),
                                assist_tackle_4_player_name VARCHAR(50),
                                assist_tackle_4_team VARCHAR(6),
                                tackle_with_assist BOOLEAN,
                                tackle_with_assist_1_player_id VARCHAR(20),
                                tackle_with_assist_1_player_name VARCHAR(50),
                                tackle_with_assist_1_team VARCHAR(6),
                                tackle_with_assist_2_player_id VARCHAR(20),
                                tackle_with_assist_2_player_name VARCHAR(50),
                                tackle_with_assist_2_team VARCHAR(6),
                                pass_defense_1_player_id VARCHAR(20),
                                pass_defense_1_player_name VARCHAR(50),
                                pass_defense_2_player_id VARCHAR(20),
                                pass_defense_2_player_name VARCHAR(50),
                                fumbled_1_team VARCHAR(6),
                                fumbled_1_player_id VARCHAR(20),
                                fumbled_1_player_name VARCHAR(50),
                                fumbled_2_player_id VARCHAR(20),
                                fumbled_2_player_name VARCHAR(50),
                                fumbled_2_team VARCHAR(6),
                                fumble_recovery_1_team VARCHAR(6),
                                fumble_recovery_1_yards INT NULL,
                                fumble_recovery_1_player_id VARCHAR(20),
                                fumble_recovery_1_player_name VARCHAR(50),
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT NULL,
                                fumble_recovery_2_player_id VARCHAR(255),
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id VARCHAR(255),
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id VARCHAR(255),
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id VARCHAR(255),
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT NULL,
                                penalty_team VARCHAR(255),
                                penalty_player_id VARCHAR(255),
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT NULL,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id VARCHAR(255),
                                season INT NULL,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT NULL,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id VARCHAR(255),
                                play_clock INT NULL,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT NULL,
                                fixed_drive INT NULL,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIME,
                                drive_play_count INT NULL,
                                drive_time_of_possession TIME,
                                drive_first_downs INT NULL,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT NULL,
                                drive_quarter_end INT NULL,
                                drive_yards_penalized INT NULL,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line VARCHAR(255),
                                drive_end_yard_line VARCHAR(255),
                                drive_play_id_started INT NULL,
                                drive_play_id_ended INT NULL,
                                away_score INT NULL,
                                home_score INT NULL,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id VARCHAR(255),
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer VARCHAR(255),
                                passer_jersey_number INT NULL,
                                rusher VARCHAR(255),
                                rusher_jersey_number INT NULL,
                                receiver VARCHAR(255),
                                receiver_jersey_number INT NULL,
                                pass INT NULL,
                                rush INT NULL,
                                first_down BOOLEAN,
                                special INT NULL,
                                play INT NULL,
                                passer_id VARCHAR(255),
                                rusher_id VARCHAR(255),
                                receiver_id VARCHAR(255),
                                name VARCHAR(255),
                                jersey_number INT NULL,
                                id VARCHAR(255),
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id VARCHAR(255),
                                fantasy VARCHAR(255),
                                fantasy_id VARCHAR(255),
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success FLOAT,
                                xyac_fd FLOAT,
                                xpass FLOAT,
                                pass_oe FLOAT,
                                UNIQUE(game_id, play_id)
);

CREATE TABLE nfl_plays_2024 (
                                play_id SERIAL PRIMARY KEY,
                                game_id VARCHAR(20),
                                old_game_id VARCHAR(20),
                                home_team VARCHAR(3),
                                away_team VARCHAR(3),
                                season_type VARCHAR(4),
                                week INT,
                                posteam VARCHAR(3),
                                posteam_type VARCHAR(10),
                                defteam VARCHAR(3),
                                side_of_field VARCHAR(3),
                                yardline_100 INT,
                                game_date DATE,
                                quarter_seconds_remaining INT,
                                half_seconds_remaining INT,
                                game_seconds_remaining INT,
                                game_half VARCHAR(10),
                                quarter_end BOOLEAN,
                                drive INT,
                                sp BOOLEAN,
                                qtr INT,
                                down INT,
                                goal_to_go BOOLEAN,
                                time VARCHAR(8),
                                yrdln VARCHAR(10),
                                ydstogo INT,
                                ydsnet INT,
                                description TEXT,
                                play_type VARCHAR(20),
                                yards_gained INT,
                                shotgun BOOLEAN,
                                no_huddle BOOLEAN,
                                qb_dropback BOOLEAN,
                                qb_kneel BOOLEAN,
                                qb_spike BOOLEAN,
                                qb_scramble BOOLEAN,
                                pass_length VARCHAR(20),
                                pass_location VARCHAR(20),
                                air_yards INT,
                                yards_after_catch INT,
                                run_location VARCHAR(20),
                                run_gap VARCHAR(20),
                                field_goal_result VARCHAR(20),
                                kick_distance INT,
                                extra_point_result VARCHAR(20),
                                two_point_conv_result VARCHAR(20),
                                home_timeouts_remaining INT,
                                away_timeouts_remaining INT,
                                timeout BOOLEAN,
                                timeout_team VARCHAR(3),
                                td_team VARCHAR(3),                 -- Team that scored the touchdown
                                td_player_name VARCHAR(50),         -- Player name who scored the touchdown
                                td_player_id VARCHAR(20),
                                posteam_timeouts_remaining INT,
                                defteam_timeouts_remaining INT,
                                total_home_score INT,
                                total_away_score INT,
                                posteam_score INT,
                                no_score_prob NUMERIC,                    -- Probability of no score on the play
                                opp_fg_prob NUMERIC,                      -- Opponent field goal probability
                                opp_safety_prob NUMERIC,                  -- Opponent safety probability
                                opp_td_prob NUMERIC,                      -- Opponent touchdown probability
                                fg_prob NUMERIC,                          -- Field goal probability
                                safety_prob NUMERIC,                      -- Safety probability
                                td_prob NUMERIC,                          -- Touchdown probability
                                extra_point_prob NUMERIC,                 -- Extra point probability
                                two_point_conversion_prob NUMERIC,        -- Two-point conversion probability
                                ep NUMERIC,                               -- Expected points
                                epa NUMERIC,                              -- Expected points added
                                total_home_epa NUMERIC,                   -- Total EPA for the home team
                                total_away_epa NUMERIC,                   -- Total EPA for the away team
                                total_home_rush_epa NUMERIC,              -- Total rushing EPA for the home team
                                total_away_rush_epa NUMERIC,              -- Total rushing EPA for the away team
                                total_home_pass_epa NUMERIC,              -- Total passing EPA for the home team
                                total_away_pass_epa NUMERIC,              -- Total passing EPA for the away team
                                air_epa NUMERIC,                          -- Air yards EPA
                                yac_epa NUMERIC,                          -- Yards after catch EPA
                                comp_air_epa NUMERIC,                     -- Completed air yards EPA
                                comp_yac_epa NUMERIC,                     -- Completed yards after catch EPA
                                total_home_comp_air_epa NUMERIC,          -- Total home team completed air yards EPA
                                total_away_comp_air_epa NUMERIC,          -- Total away team completed air yards EPA
                                total_home_comp_yac_epa NUMERIC,          -- Total home team completed YAC EPA
                                total_away_comp_yac_epa NUMERIC,          -- Total away team completed YAC EPA
                                total_home_raw_air_epa NUMERIC,           -- Total home team raw air EPA
                                total_away_raw_air_epa NUMERIC,           -- Total away team raw air EPA
                                total_home_raw_yac_epa NUMERIC,           -- Total home team raw YAC EPA
                                total_away_raw_yac_epa NUMERIC,           -- Total away team raw YAC EPA
                                wp NUMERIC,                               -- Win probability
                                def_wp NUMERIC,                           -- Defensive win probability
                                home_wp NUMERIC,                          -- Home team win probability
                                away_wp NUMERIC,                          -- Away team win probability
                                wpa NUMERIC,                              -- Win probability added
                                vegas_wpa NUMERIC,                        -- Win probability added by Vegas odds
                                vegas_home_wpa NUMERIC,                   -- Home team Vegas WPA
                                home_wp_post NUMERIC,                     -- Home team win probability after the play
                                away_wp_post NUMERIC,                     -- Away team win probability after the play
                                vegas_wp NUMERIC,                         -- Vegas win probability
                                vegas_home_wp NUMERIC,                    -- Vegas home team win probability
                                total_home_rush_wpa NUMERIC,              -- Total home team rushing WPA
                                total_away_rush_wpa NUMERIC,              -- Total away team rushing WPA
                                total_home_pass_wpa NUMERIC,              -- Total home team passing WPA
                                total_away_pass_wpa NUMERIC,              -- Total away team passing WPA
                                air_wpa NUMERIC,                          -- Air yards WPA
                                yac_wpa NUMERIC,                          -- Yards after catch WPA
                                comp_air_wpa NUMERIC,                     -- Completed air yards WPA
                                comp_yac_wpa NUMERIC,                     -- Completed YAC WPA
                                total_home_comp_air_wpa NUMERIC,          -- Total home team completed air yards WPA
                                total_away_comp_air_wpa NUMERIC,          -- Total away team completed air yards WPA
                                total_home_comp_yac_wpa NUMERIC,          -- Total home team completed YAC WPA
                                total_away_comp_yac_wpa NUMERIC,          -- Total away team completed YAC WPA
                                total_home_raw_air_wpa NUMERIC,           -- Total home team raw air WPA
                                total_away_raw_air_wpa NUMERIC,           -- Total away team raw air WPA
                                total_home_raw_yac_wpa NUMERIC,           -- Total home team raw YAC WPA
                                total_away_raw_yac_wpa NUMERIC,           -- Total away team raw YAC WPA
                                punt_blocked BOOLEAN,                     -- Indicator for blocked punt
                                first_down_rush BOOLEAN,                  -- Indicator for first down by rush
                                first_down_pass BOOLEAN,                  -- Indicator for first down by pass
                                first_down_penalty BOOLEAN,               -- Indicator for first down by penalty
                                third_down_converted BOOLEAN,             -- Indicator for third down conversion
                                third_down_failed BOOLEAN,                -- Indicator for third down failure
                                fourth_down_converted BOOLEAN,            -- Indicator for fourth down conversion
                                fourth_down_failed BOOLEAN,               -- Indicator for fourth down failure
                                incomplete_pass BOOLEAN,                  -- Indicator for incomplete pass
                                touchback BOOLEAN,                        -- Indicator for touchback
                                interception BOOLEAN,                     -- Indicator for interception
                                punt_inside_twenty BOOLEAN,               -- Indicator for punt inside the 20-yard line
                                punt_in_endzone BOOLEAN,                  -- Indicator for punt in the endzone
                                punt_out_of_bounds BOOLEAN,               -- Indicator for punt out of bounds
                                punt_downed BOOLEAN,                      -- Indicator for downed punt
                                punt_fair_catch BOOLEAN,                  -- Indicator for fair catch on punt
                                kickoff_inside_twenty BOOLEAN,            -- Indicator for kickoff inside the 20-yard line
                                kickoff_in_endzone BOOLEAN,               -- Indicator for kickoff in the endzone
                                kickoff_out_of_bounds BOOLEAN,            -- Indicator for kickoff out of bounds
                                kickoff_downed BOOLEAN,                   -- Indicator for downed kickoff
                                kickoff_fair_catch BOOLEAN,               -- Indicator for fair catch on kickoff
                                fumble_forced BOOLEAN,                    -- Indicator for forced fumble
                                fumble_not_forced BOOLEAN,
                                fumble_out_of_bounds BOOLEAN,            -- Indicator if the fumble went out of bounds
                                solo_tackle INT,                         -- Count of solo tackles
                                safety BOOLEAN,                          -- Indicator for a safety
                                penalty BOOLEAN,                         -- Indicator for a penalty
                                tackled_for_loss BOOLEAN,                -- Indicator if the player was tackled for loss
                                fumble_lost BOOLEAN,                     -- Indicator if the fumble was lost
                                own_kickoff_recovery BOOLEAN,            -- Indicator if the team recovered their own kickoff
                                own_kickoff_recovery_td BOOLEAN,         -- Indicator if own kickoff recovery resulted in a TD
                                qb_hit BOOLEAN,                          -- Indicator if the quarterback was hit
                                rush_attempt BOOLEAN,                    -- Indicator if there was a rushing attempt
                                pass_attempt BOOLEAN,                    -- Indicator if there was a passing attempt
                                sack BOOLEAN,                            -- Indicator for a sack
                                touchdown BOOLEAN,                       -- Indicator for any type of touchdown
                                pass_touchdown BOOLEAN,                  -- Indicator for a passing touchdown
                                rush_touchdown BOOLEAN,                  -- Indicator for a rushing touchdown
                                return_touchdown BOOLEAN,                -- Indicator for a return touchdown
                                extra_point_attempt BOOLEAN,             -- Indicator for an extra point attempt
                                two_point_attempt BOOLEAN,               -- Indicator for a two-point attempt
                                field_goal_attempt BOOLEAN,              -- Indicator for a field goal attempt
                                kickoff_attempt BOOLEAN,                 -- Indicator for a kickoff attempt
                                punt_attempt BOOLEAN,                    -- Indicator for a punt attempt
                                fumble BOOLEAN,                          -- Indicator for a fumble
                                complete_pass BOOLEAN,                   -- Indicator for a completed pass
                                assist_tackle INT,                       -- Count of assisted tackles
                                lateral_reception BOOLEAN,               -- Indicator for a lateral reception
                                lateral_rush BOOLEAN,                    -- Indicator for a lateral rush
                                lateral_return BOOLEAN,                  -- Indicator for a lateral return
                                lateral_recovery BOOLEAN,                -- Indicator for a lateral recovery
                                passer_player_id VARCHAR(20),            -- Player ID of the passer
                                passer_player_name VARCHAR(50),          -- Name of the passer
                                passing_yards INT,                       -- Passing yards gained
                                receiver_player_id VARCHAR(20),          -- Player ID of the receiver
                                receiver_player_name VARCHAR(50),        -- Name of the receiver
                                receiving_yards INT,                     -- Receiving yards gained
                                rusher_player_id VARCHAR(20),            -- Player ID of the rusher
                                rusher_player_name VARCHAR(50),          -- Name of the rusher
                                rushing_yards INT,                       -- Rushing yards gained
                                lateral_receiver_player_id VARCHAR(20),  -- Player ID of the lateral receiver
                                lateral_receiver_player_name VARCHAR(50),-- Name of the lateral receiver
                                lateral_receiving_yards INT,              -- Receiving yards from lateral play
                                lateral_rusher_player_id VARCHAR(20),          -- Player ID of the lateral rusher
                                lateral_rusher_player_name VARCHAR(50),        -- Name of the lateral rusher
                                lateral_rushing_yards INT,                     -- Rushing yards from lateral play
                                lateral_sack_player_id VARCHAR(20),            -- Player ID of the lateral sack
                                lateral_sack_player_name VARCHAR(50),          -- Name of the lateral sack
                                interception_player_id VARCHAR(20),            -- Player ID of the player making the interception
                                interception_player_name VARCHAR(50),          -- Name of the player making the interception
                                lateral_interception_player_id VARCHAR(20),    -- Player ID of the lateral interception
                                lateral_interception_player_name VARCHAR(50),  -- Name of the lateral interception player
                                punt_returner_player_id VARCHAR(20),           -- Player ID of the punt returner
                                punt_returner_player_name VARCHAR(50),         -- Name of the punt returner
                                lateral_punt_returner_player_id VARCHAR(20),   -- Player ID of the lateral punt returner
                                lateral_punt_returner_player_name VARCHAR(50), -- Name of the lateral punt returner
                                kickoff_returner_player_name VARCHAR(50),      -- Name of the kickoff returner
                                kickoff_returner_player_id VARCHAR(20),        -- Player ID of the kickoff returner
                                lateral_kickoff_returner_player_id VARCHAR(20),-- Player ID of the lateral kickoff returner
                                lateral_kickoff_returner_player_name VARCHAR(50),-- Name of the lateral kickoff returner
                                punter_player_id VARCHAR(20),                  -- Player ID of the punter
                                punter_player_name VARCHAR(50),                -- Name of the punter
                                kicker_player_name VARCHAR(50),                -- Name of the kicker
                                kicker_player_id VARCHAR(20),                  -- Player ID of the kicker
                                own_kickoff_recovery_player_id VARCHAR(20),    -- Player ID of the player recovering own kickoff
                                own_kickoff_recovery_player_name VARCHAR(50),  -- Name of the player recovering own kickoff
                                blocked_player_id VARCHAR(20),                 -- Player ID of the player who blocked a play
                                blocked_player_name VARCHAR(50),
                                tackle_for_loss_1_player_id VARCHAR(20),           -- Player ID of the first player to tackle for loss
                                tackle_for_loss_1_player_name VARCHAR(50),         -- Name of the first player to tackle for loss
                                tackle_for_loss_2_player_id VARCHAR(20),           -- Player ID of the second player to tackle for loss
                                tackle_for_loss_2_player_name VARCHAR(50),         -- Name of the second player to tackle for loss
                                qb_hit_1_player_id VARCHAR(20),                    -- Player ID of the first player to hit the QB
                                qb_hit_1_player_name VARCHAR(50),                  -- Name of the first player to hit the QB
                                qb_hit_2_player_id VARCHAR(20),                    -- Player ID of the second player to hit the QB
                                qb_hit_2_player_name VARCHAR(50),                  -- Name of the second player to hit the QB
                                forced_fumble_player_1_team VARCHAR(3),            -- Team of the first forced fumble player
                                forced_fumble_player_1_player_id VARCHAR(20),      -- Player ID of the first forced fumble player
                                forced_fumble_player_1_player_name VARCHAR(50),    -- Name of the first forced fumble player
                                forced_fumble_player_2_team VARCHAR(3),            -- Team of the second forced fumble player
                                forced_fumble_player_2_player_id VARCHAR(20),      -- Player ID of the second forced fumble player
                                forced_fumble_player_2_player_name VARCHAR(50),    -- Name of the second forced fumble player
                                solo_tackle_1_team VARCHAR(3),                     -- Team of the first player to make a solo tackle
                                solo_tackle_2_team VARCHAR(3),                     -- Team of the second player to make a solo tackle
                                solo_tackle_1_player_id VARCHAR(20),               -- Player ID of the first player to make a solo tackle
                                solo_tackle_2_player_id VARCHAR(20),               -- Player ID of the second player to make a solo tackle
                                solo_tackle_1_player_name VARCHAR(50),             -- Name of the first player to make a solo tackle
                                solo_tackle_2_player_name VARCHAR(50),             -- Name of the second player to make a solo tackle
                                assist_tackle_1_player_id VARCHAR(20),             -- Player ID of the first player to assist a tackle
                                assist_tackle_1_player_name VARCHAR(50),           -- Name of the first player to assist a tackle
                                assist_tackle_1_team VARCHAR(3),                   -- Team of the first player to assist a tackle
                                assist_tackle_2_player_id VARCHAR(20),             -- Player ID of the second player to assist a tackle
                                assist_tackle_2_player_name VARCHAR(50),           -- Name of the second player to assist a tackle
                                assist_tackle_2_team VARCHAR(3),                    -- Team of the second player to assist a tackle
                                assist_tackle_3_player_id VARCHAR(20),              -- Player ID of the third player to assist a tackle
                                assist_tackle_3_player_name VARCHAR(50),            -- Name of the third player to assist a tackle
                                assist_tackle_3_team VARCHAR(3),                    -- Team of the third player to assist a tackle
                                assist_tackle_4_player_id VARCHAR(20),              -- Player ID of the fourth player to assist a tackle
                                assist_tackle_4_player_name VARCHAR(50),            -- Name of the fourth player to assist a tackle
                                assist_tackle_4_team VARCHAR(3),                    -- Team of the fourth player to assist a tackle
                                tackle_with_assist BOOLEAN,                         -- Indicator for tackle with assist
                                tackle_with_assist_1_player_id VARCHAR(20),         -- Player ID of the first player involved in tackle with assist
                                tackle_with_assist_1_player_name VARCHAR(50),       -- Name of the first player involved in tackle with assist
                                tackle_with_assist_1_team VARCHAR(3),               -- Team of the first player involved in tackle with assist
                                tackle_with_assist_2_player_id VARCHAR(20),         -- Player ID of the second player involved in tackle with assist
                                tackle_with_assist_2_player_name VARCHAR(50),       -- Name of the second player involved in tackle with assist
                                tackle_with_assist_2_team VARCHAR(3),               -- Team of the second player involved in tackle with assist
                                pass_defense_1_player_id VARCHAR(20),               -- Player ID of the first player to defend a pass
                                pass_defense_1_player_name VARCHAR(50),             -- Name of the first player to defend a pass
                                pass_defense_2_player_id VARCHAR(20),               -- Player ID of the second player to defend a pass
                                pass_defense_2_player_name VARCHAR(50),             -- Name of the second player to defend a pass
                                fumbled_1_team VARCHAR(3),                          -- Team of the first player who fumbled
                                fumbled_1_player_id VARCHAR(20),                    -- Player ID of the first player who fumbled
                                fumbled_1_player_name VARCHAR(50),                  -- Name of the first player who fumbled
                                fumbled_2_player_id VARCHAR(20),                    -- Player ID of the second player who fumbled
                                fumbled_2_player_name VARCHAR(50),                  -- Name of the second player who fumbled
                                fumbled_2_team VARCHAR(3),                          -- Team of the second player who fumbled
                                fumble_recovery_1_team VARCHAR(3),                  -- Team of the first player to recover the fumble
                                fumble_recovery_1_yards INT,                        -- Yards gained after recovering the fumble
                                fumble_recovery_1_player_id VARCHAR(20),            -- Player ID of the first player to recover the fumble
                                fumble_recovery_1_player_name VARCHAR(50),         -- Name of the first player to recover the fumble
                                fumble_recovery_2_team VARCHAR(255),
                                fumble_recovery_2_yards INT,
                                fumble_recovery_2_player_id INT,
                                fumble_recovery_2_player_name VARCHAR(255),
                                sack_player_id INT,
                                sack_player_name VARCHAR(255),
                                half_sack_1_player_id INT,
                                half_sack_1_player_name VARCHAR(255),
                                half_sack_2_player_id INT,
                                half_sack_2_player_name VARCHAR(255),
                                return_team VARCHAR(255),
                                return_yards INT,
                                penalty_team VARCHAR(255),
                                penalty_player_id VARCHAR(255),
                                penalty_player_name VARCHAR(255),
                                penalty_yards INT,
                                replay_or_challenge VARCHAR(255),
                                replay_or_challenge_result VARCHAR(255),
                                penalty_type VARCHAR(255),
                                defensive_two_point_attempt BOOLEAN,
                                defensive_two_point_conv BOOLEAN,
                                defensive_extra_point_attempt BOOLEAN,
                                defensive_extra_point_conv BOOLEAN,
                                safety_player_name VARCHAR(255),
                                safety_player_id INT,
                                season INT,
                                cp FLOAT,
                                cpoe FLOAT,
                                series VARCHAR(255),
                                series_success BOOLEAN,
                                series_result VARCHAR(255),
                                order_sequence INT,
                                start_time TIME,
                                time_of_day VARCHAR(255),
                                stadium VARCHAR(255),
                                weather VARCHAR(255),
                                nfl_api_id INT,
                                play_clock TIME,
                                play_deleted BOOLEAN,
                                play_type_nfl VARCHAR(255),
                                special_teams_play BOOLEAN,
                                st_play_type VARCHAR(255),
                                end_clock_time TIME,
                                end_yard_line INT,
                                fixed_drive INT,
                                fixed_drive_result VARCHAR(255),
                                drive_real_start_time TIMESTAMPTZ NULL,
                                drive_play_count INT,
                                drive_time_of_possession TIME,
                                drive_first_downs INT,
                                drive_inside20 BOOLEAN,
                                drive_ended_with_score BOOLEAN,
                                drive_quarter_start INT,
                                drive_quarter_end INT,
                                drive_yards_penalized INT,
                                drive_start_transition VARCHAR(255),
                                drive_end_transition VARCHAR(255),
                                drive_game_clock_start TIME,
                                drive_game_clock_end TIME,
                                drive_start_yard_line INT,
                                drive_end_yard_line INT,
                                drive_play_id_started INT,
                                drive_play_id_ended INT,
                                away_score INT,
                                home_score INT,
                                location VARCHAR(255),
                                result VARCHAR(255),
                                total FLOAT,
                                spread_line FLOAT,
                                total_line FLOAT,
                                div_game BOOLEAN,
                                roof VARCHAR(255),
                                surface VARCHAR(255),
                                temp FLOAT,
                                wind FLOAT,
                                home_coach VARCHAR(255),
                                away_coach VARCHAR(255),
                                stadium_id INT,
                                game_stadium VARCHAR(255),
                                aborted_play BOOLEAN,
                                success BOOLEAN,
                                passer INT,
                                passer_jersey_number INT,
                                rusher INT,
                                rusher_jersey_number INT,
                                receiver INT,
                                receiver_jersey_number INT,
                                pass INT,
                                rush INT,
                                first_down BOOLEAN,
                                special INT,
                                play INT,
                                passer_id INT,
                                rusher_id INT,
                                receiver_id INT,
                                name VARCHAR(255),
                                jersey_number INT,
                                id INT,
                                fantasy_player_name VARCHAR(255),
                                fantasy_player_id INT,
                                fantasy BOOLEAN,
                                fantasy_id INT,
                                out_of_bounds BOOLEAN,
                                home_opening_kickoff BOOLEAN,
                                qb_epa FLOAT,
                                xyac_epa FLOAT,
                                xyac_mean_yardage FLOAT,
                                xyac_median_yardage FLOAT,
                                xyac_success BOOLEAN,
                                xyac_fd INT,
                                xpass INT,
                                pass_oe INT,
                                UNIQUE(game_id, play_id)
);

COMMIT TRANSACTION;
