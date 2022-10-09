create table rest_lab_geom_geog as
select*, st_point(lon,lat, 4326) geom, st_point (lon, lat, 4326):: geography geog
from restaurants_lab2;
SELECT * FROM public.restaurants_lab2

![Lab3_1](Lab3_1.png)


create table rest_lab6 (addess varchar,
					  city text,
					  country TEXT,
					  lat numeric,
					  lon numeric,
					  name_1 text,
					  postal_code VARCHAR(50),
					   province varchar(50),
					   website varchar,
						id serial,
					   PRIMARY KEY (id))
					   
create table rest_lab_geom_geog_6 as
select*, st_point(lon,lat, 4326) geom, st_point (lon, lat, 4326):: geography geog
from restaurants_lab2;
SELECT * FROM public.rest_lab6

select*, st_distance (st_point (-73.9645,40.7678,4326)::geography, geog, true)/1000.0 as "d(km)"
from rest_lab_geom_geog_6
order by "d(km)" asc
limit 10;








