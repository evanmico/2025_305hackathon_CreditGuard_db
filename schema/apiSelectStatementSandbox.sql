-- @block
SELECT ID, sum(b.ID)
    FROM
        (SELECT ID FROM card WHERE ID <> 5) AS pCard
            (INNER JOIN card_benefit cLink ON pCard.ID = cLink.cardID) 
                INNER JOIN benefit b ON cLink.benefitID=b.ID
GROUP BY pCard.ID
DESC
LIMIT 3;

-- @block
SELECT pCard.ID, SUM(b.ID) AS total_benefit_id
FROM
    (SELECT ID FROM card WHERE ID <> 5) AS pCard
INNER JOIN card_benefit cLink ON pCard.ID = cLink.cardID
INNER JOIN benefit b ON cLink.benefitID = b.ID
GROUP BY pCard.ID
ORDER BY pCard.ID DESC
LIMIT 3;
