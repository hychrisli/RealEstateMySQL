SELECT * FROM CITY ;

SELECT * FROM ZIPCODE;

DELETE FROM ZIPCODE WHERE ZIPCODE >=1;

-- Find zipcodes shared by cities
SELECT ZIPS.ZIPCODE, CITY.NAME CITY 
FROM CITY, ZIPCODE,  
( SELECT COUNT(ZIPCODE) ZIP_COUNT, ZIPCODE FROM ZIPCODE
GROUP BY ZIPCODE
HAVING  ZIP_COUNT > 1 
) ZIPS
WHERE ZIPS.ZIPCODE = ZIPCODE.ZIPCODE
AND ZIPCODE.CITY_ID = CITY.CITY_ID
