<--     Question 1      -->

SELECT *
FROM total_views
ORDER BY total_views DESC
LIMIT 20;


<--     Question 2      -->

SELECT *
FROM link_percents
WHERE percentage <= 300
  AND total_traffic > 3000
ORDER BY percentage DESC
LIMIT 20;


<--     Question 3      -->

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Hotel_California'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Eagles_(band)'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Eagles_discography'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Olivia_Newton-John_albums_discography'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Olivia_Newton-John_singles_discography'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Xanadu_(soundtrack)'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'A_Box_of_Their_Best'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Four_Light_Years'
ORDER BY lp.percentage DESC
LIMIT 20;

SELECT request, lp.percentage
FROM clickstream_data
JOIN link_percents AS lp
  ON request = lp.page_title
WHERE referrer = 'Electric_Light_Orchestra'
ORDER BY lp.percentage DESC
LIMIT 20;

<--     Question 4      -->

FROM pageviews_comparison
WHERE uk_views > us_views
  AND uk_views > au_views
ORDER BY uk_views DESC
LIMIT 20;

FROM pageviews_comparison
WHERE us_views > uk_views
  AND us_views > au_views
ORDER BY us_views DESC
LIMIT 20;

FROM pageviews_comparison
WHERE au_views > us_views
  AND au_views > uk_views
ORDER BY au_views DESC
LIMIT 20;

<--     Question 5      -->


<--     Question 6      -->
