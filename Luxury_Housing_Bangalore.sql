use Luxury_Housing_Bangalore_DB;
show tables;
select count(*) from luxury_properties;
select * from luxury_properties;
describe luxury_properties;
select micro_market,booking_status,developer_name from luxury_properties GROUP BY booking_status,micro_market,developer_name order by developer_name;
select AVG(ticket_price_cr) as Ticket_Price,developer_name from luxury_properties group by developer_name order by Ticket_Price desc;