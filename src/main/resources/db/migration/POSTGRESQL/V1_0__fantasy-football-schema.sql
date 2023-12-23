CREATE TABLE IF NOT EXISTS LEAGUE_TEAM (
    CODE INT NOT NULL UNIQUE,
    DRAW INT,
    FORM DECIMAL(5, 2),
    LOSS INT,
    NAME VARCHAR(30) NOT NULL,
    PLAYED INT,
    POINTS INT,
    POSITION INT,
    SHRT_NAME VARCHAR(3),
    STRGTH INT,
    TEAM_DIV VARCHAR(10),
    UN_AVLBL BOOLEAN,
    WIN INT,
    STRGTH_OVR_HOME INT,
    STRGTH_OVR_AWAY INT,
    STRGTH_ATT_HOME INT,
    STRGTH_ATT_AWAY INT,
    STRGTH_DEF_HOME INT,
    STRGTH_DEF_AWAY INT,
    PULSE_ID INT,
    CONSTRAINT LEAGUE_TEAM_PRIMARY PRIMARY KEY (CODE,NAME)
);

CREATE TABLE IF NOT EXISTS PLYR_BSC_INFO (
    CODE INT NOT NULL,
    FRST_NAME VARCHAR(30),
    SECD_NAME VARCHAR(30),
    SQD_NO INT,
    PLYR_STS CHAR(1),
    TEAM_CODE INT NOT NULL,
    WEB_NAME VARCHAR(50),
    CONSTRAINT PLYR_BSC_INFO_PRIMARY PRIMARY KEY (CODE),
    CONSTRAINT PLYR_BSC_INFO_FK1 FOREIGN KEY (TEAM_CODE) REFERENCES LEAGUE_TEAM (CODE) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS PLYR_FANT_STCS (
    PLYR_CODE INT NOT NULL,
    CHNC_OF_PLYNG_NXT_RD INT,
    CHNC_OF_PLYNG_CURR_RD INT,
    DREAM_TM_CT INT,
    EXP_PNTS_NXT DECIMAL(6, 2),
    EXP_PNTS_CURR DECIMAL(6, 2),
    EVT_PNTS INT,
    IS_IN_DREAM_TM BOOLEAN,
    FORM DECIMAL(5, 2),
    CURR_COST INT,
    PNTS_PER_GAME DECIMAL(6, 2),
    SEL_BY_PRCT DECIMAL(5, 2),
    TOTAL_PNTS INT,
    TRNFR_IN BIGINT,
    TRNFR_OUT BIGINT,
    VAL_FROM DECIMAL(6, 2),
    VAL_SEASN DECIMAL(6 ,2),
    BONUS INT,
    BPS INT,
    EXP_GOALS DECIMAL(6 ,2),
    EXP_ASSTS DECIMAL(6, 2),
    EXP_GOAL_INVLMTS DECIMAL(6, 2),
    EXP_GOALS_CNCDED DECIMAL(6, 2),
    EXP_GOALS_90 DECIMAL(6 ,2),
    EXP_ASSTS_90 DECIMAL(6, 2),
    EXP_GOAL_INVLMTS_90 DECIMAL(6, 2),
    EXP_GOALS_CNCDED_90 DECIMAL(6, 2),
    CONSTRAINT PLYR_FANT_STCS_PRIMARY PRIMARY KEY (PLYR_CODE),
    CONSTRAINT PLYR_FANT_STCS_FK1 FOREIGN KEY (PLYR_CODE) REFERENCES PLYR_BSC_INFO (CODE) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS PLYR_GAME_STCS (
    PLYR_CODE INT NOT NULL,
    MINS INT,
    GOALS_SCRD INT,
    ASSTS INT,
    CLEAN_SHTS INT,
    GOALS_CNCDED INT,
    OWN_GOALS INT,
    PEN_SAVED INT,
    PEN_MISSED INT,
    YELL_CARDS INT,
    RED_CARDS INT,
    SAVES INT,
    INFLUENCE DECIMAL(6, 2),
    CREATIVITY DECIMAL(6, 2),
    THREAT DECIMAL(6, 2),
    STARTS INT,
    STARTS_90 DECIMAL(6, 2),
    CLEAN_SHTS_90 DECIMAL(6, 2),
    SAVES_90 DECIMAL(6, 2),
    GOALS_CNCDED_90 DECIMAL(6, 2),
    CONSTRAINT PLYR_GAME_STCS_PRIMARY PRIMARY KEY (PLYR_CODE),
    CONSTRAINT PLYR_GAME_STCS_FK1 FOREIGN KEY (PLYR_CODE) REFERENCES PLYR_BSC_INFO (CODE) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS PLYR_MISC_INFO (
    PLYR_CODE INT NOT NULL,
    NEWS VARCHAR(100),
    NEWS_ADDED TIMESTAMP,
    ICT_INDX DECIMAL(6, 2),
    INFLUENCE_RANK INT,
    INFLUENCE_RANK_TYPE INT,
    CREATIVITY_RANK INT,
    CREATIVITY_RANK_TYPE INT,
    THREAT_RANK INT,
    THREAT_RANK_TYPE INT,
    ICT_INDEX_RANK INT,
    ICT_INDEX_RANK_TYPE INT,
    CRNRS_AND_INDR_FK_ORDR VARCHAR(50),
    CRNRS_AND_INDR_FK_TX VARCHAR(50),
    DR_FK_ORDR VARCHAR(50),
    DR_FK_TX VARCHAR(50),
    PEN_ORDR VARCHAR(50),
    PEN_TX VARCHAR(50),
    CURR_COST_RANK INT,
    CURR_COST_RANK_TYPE INT,
    FORM_RANK INT,
    FORM_RANK_TYPE INT,
    PNTS_PER_GAME_RANK INT,
    PNTS_PER_GAME_RANK_TYPE INT,
    SEL_RANK INT,
    SEL_RANK_TYPE INT,
    CONSTRAINT PLYR_MISC_INFO_PRIMARY PRIMARY KEY (PLYR_CODE),
    CONSTRAINT PLYR_MISC_INFO_FK1 FOREIGN KEY (PLYR_CODE) REFERENCES PLYR_BSC_INFO (CODE) ON DELETE RESTRICT ON UPDATE RESTRICT
);