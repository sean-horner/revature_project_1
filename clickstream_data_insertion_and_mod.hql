LOAD DATA LOCAL INPATH '$USER_HOME/project_1/clickstream/clickstream-enwiki-2020-09.tsv' 
INTO TABLE clickstream_data;

INSERT INTO TABLE clicked_in (
    SELECT request, sum(number)
    FROM clickstream_data
    GROUP BY request);

INSERT INTO TABLE internal_links (
    SELECT referrer, sum(number)
    FROM clickstream_data
    WHERE type = 'link'
    GROUP BY referrer);

INSERT INTO TABLE link_percents (
    SELECT ci.page_title, il.total_internal_links, ci.total_traffic, 
    ((il.total_internal_links/ci.total_traffic)*100)
    FROM clicked_in AS ci
    JOIN internal_links AS il
      ON ci.page_title = il.page_title);

<-- For AU, repeat with 20201019-220000 through 20201020-090000 -->
<-- NOTE: 20201019-220000 = hour '-2' and -230000 = hour ' -1'  -->
LOAD DATA LOCAL INPATH '$USER_HOME/project_1/pageview/pageviews-20201019-220000'
INTO TABLE pageview_data;

INSERT INTO TABLE pageviews_au (
    SELECT page_title, count_views, '-2', '1.00'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

TRUNCATE TABLE pageview_data;

<-- For AU and UK, repeat with 20201020-100000 through 20201020-120000 -->
LOAD DATA LOCAL INPATH '$USER_HOME/project_1/pageview/pageviews-20201020-100000'
INTO TABLE pageview_data;

INSERT INTO TABLE pageviews_au (
    SELECT page_title, count_views, '10', '0.2727'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

INSERT INTO TABLE pageviews_uk (
    SELECT page_title, count_views, '10', '0.7273'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

TRUNCATE TABLE pageview_data;

<-- For UK, repeat with 20201020-130000 through -140000 -->
LOAD DATA LOCAL INPATH '$USER_HOME/project_1/pageview/pageviews-20201020-130000'
INTO TABLE pageview_data;

INSERT INTO TABLE pageviews_uk (
    SELECT page_title, count_views, '13', '1.00'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

TRUNCATE TABLE pageview_data;

<-- For UK and US, repeat with 20201020-150000 through -200000 -->
LOAD DATA LOCAL INPATH '$USER_HOME/project_1/pageview/pageviews-20201020-150000'
INTO TABLE pageview_data;

INSERT INTO TABLE pageviews_uk (
    SELECT page_title, count_views, '10', '0.1688'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

INSERT INTO TABLE pageviews_us (
    SELECT page_title, count_views, '10', '0.8312'
    FROM pageview_data
    WHERE domain_code LIKE 'en%');

TRUNCATE TABLE pageview_data;