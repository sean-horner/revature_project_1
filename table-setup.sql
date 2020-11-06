CREATE TABLE clickstream_data
(referrer String, request String, link_type String, number int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n';

CREATE TABLE clicked_in
(page_title String, total_traffic int);

CREATE TABLE internal_links
(page_title String, total_int_links int);

CREATE TABLE link_percents
(page_title String, internal_links int, total_traffic int, percentage decimal(10,2))

CREATE TABLE pageviews_data
(domain_code String, page_title String, count_views int, total_response_size int)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\n';

CREATE TABLE pageviews_au
(page_title String, views_count int, hour int, viewer_fraction decimal(10,2));

CREATE TABLE pageviews_uk
(page_title String, views_count int, hour int, viewer_fraction decimal(10,2));

CREATE TABLE pageviews_us
(page_title String, views_count int, hour int, viewer_fraction decimal(10,2));

CREATE TABLE pageviews_comparison
(page_title String, us_views int, uk_views int, au_views int);

CREATE TABLE pageviews_totals
(page_title String, total_views);

