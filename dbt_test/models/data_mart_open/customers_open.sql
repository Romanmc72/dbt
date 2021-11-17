SELECT
    cust.id
    , cust.city
    , cntcts.types_of_contacts
    , cntcts.count_of_contacts
FROM
    {{ ref('raw_customers') }} cust
LEFT JOIN (
    SELECT
        customer_id AS id
        , COUNT(DISTINCT type) AS types_of_contacts
        , COUNT(*) AS count_of_contacts
    FROM
        {{ ref('raw_contacts') }}
    GROUP BY
        customer_id
) cntcts ON cust.id = cntcts.id
