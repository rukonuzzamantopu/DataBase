ALTER TABLE player DROP COLUMN topu;

ALTER TABLE player ALTER COLUMN player_no varchar(50);


-- Keep same name; change only the type (restate nullability!)
ALTER TABLE `player`
  MODIFY COLUMN `player_no` VARCHAR(50) NOT NULL;  -- or NULL, as needed


UPDATE player SET fuck;

            ALTER TABLE player add COLUMN city varchar(50);


            UPDATE player SET player_no =10,player_name ='topu' WHERE league_no =10;
            