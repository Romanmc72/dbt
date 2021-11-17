CREATE SCHEMA source_schema;

CREATE TABLE source_schema.customers AS 
    SELECT 1 AS id, 'Spongebob' AS first_name, 'Squarepants' AS last_name, 'Bikini Bottom' AS city
    UNION ALL
    SELECT 2, 'Bugs', 'Bunny', 'The Forrest'
    UNION ALL
    SELECT 3, 'Jimmy', 'Neutron', 'Retroville'
    UNION ALL
    SELECT 4, 'Invader', 'Zim', 'Planet Irk'
    UNION ALL
    SELECT 5, 'Rick', 'Sanchez', 'Seattle'
;

CREATE TABLE source_schema.contacts AS 
  SELECT 1 AS id, 1 AS customer_id, 'phone' AS type, '+15556788765' AS contact
  UNION ALL
  SELECT 2 AS id, 1 AS customer_id, 'email' AS type, 'spongebob.squarepants@krusty.krab.com' AS contact
  UNION ALL
  SELECT 3 AS id, 5 AS customer_id, 'snapchat' AS type, 'pickle_rick_real' AS contact
  UNION ALL
  SELECT 4 AS id, 4 AS customer_id, 'twitter' AS type, '@punyhumans' AS contact
  UNION ALL
  SELECT 5 AS id, 3 AS customer_id, 'facebook' AS type, 'jimmy.neutron' AS contact
  UNION ALL
  SELECT 6 AS id, 3 AS customer_id, 'facebook' AS type, 'brain.blast' AS contact
  UNION ALL
  SELECT 7 AS id, 2 AS customer_id, 'whatsapp' AS type, '+991234567890987' AS contact
  UNION ALL
  SELECT 8 AS id, 5 AS customer_id, 'phone' AS type, '+15551234567' AS contact
;
