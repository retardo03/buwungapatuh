select t.*,u.username,p.nama,up.status,sum(t.hargabeli * t.quantity)as jumlah_duit from transaksi t 
join users u on t.userid=u.id
join products p on t.productid=p.id
join userpayment up on t.paymentid=up.id
where up.status='admin confirmed' group by userid;

select * from users u left join penjual p on u.id=p.userid
where p.id is null;

select u.* from users u 
left join transaksi tx  on u.id=tx.userid
where tx.userid is null;


select max(jumlah_duit) ,username from (select t.*,u.username,p.nama,sum(t.hargabeli * t.quantity)as jumlah_duit from transaksi t 
join users u on t.userid=u.id
join products p on t.productid=p.id
join userpayment up on t.paymentid=up.id
where up.status='admin confirmed' group by userid) as total;

select min(jumlah_duit) ,username from (select t.*,u.username,p.nama,sum(t.hargabeli * t.quantity)as jumlah_duit from transaksi t 
join users u on t.userid=u.id
join products p on t.productid=p.id
join userpayment up on t.paymentid=up.id
where up.status='admin confirmed' group by userid) as total 
;



select u.*,pe.namatoko from users u 
join penjual pe on u.id=pe.userid;

-- select * from transaksi;

