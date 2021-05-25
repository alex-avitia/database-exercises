-- For a given ad, what is the email address of the user that created it?
SELECT poster_email
FROM ads
WHERE ad_id = ?;

-- For a given ad, what category, or categories, does it belong to?
SELECT name
FROM categories
WHERE category_id IN (
    SELECT category_id
    FROM ads_categories
    WHERE ad_id = ads.ad_id(?)
    );

-- For a given category, show all the ads that are in that category.
SELECT *
FROM ads
WHERE id IN (
    SELECT ad_id
    FROM ads_categories
    WHERE category_id = categories.category_id(?)
    );

-- For a given user, show all the ads they have posted.
SELECT *
FROM ads
WHERE poster_email = users.email(?);