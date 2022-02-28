CREATE TABLE CRYPO_DATA_FEED (
TimeStamp	bigint NOT NULL,
Open  		NUMERIC(8,2),
High 		NUMERIC(8,2),
Low	 	NUMERIC(8,2),
Close		NUMERIC(8,2),
Volume_BTC 	Float,
Volume_Crrency 	Float,
Weightted_Price float,
	PRIMARY KEY (TimeStamp)
)
