SELECT * FROM barang;
SELECT DISTINCT nama, level, cabang_sales FROM Pelanggan LIMIT 7;
SELECT id_customer, jumlah_barang, harga, harga*jumlah_barang AS total 
FROM penjualan_ds WHERE harga*jumlah_barang >=100000 ORDER by total DESC;
SELECT * FROM Pelanggan;
SELECT id_customer, jumlah_barang, harga, harga*jumlah_barang AS total, 
CASE 
	WHEN harga*jumlah_barang>300000 THEN 'high' 
    WHEN harga*jumlah_barang<100000 THEN 'low' 
    ELSE 'medium' 
END as 'kategori' from penjualan_ds;
SELECT * from penjualan_ds;
SELECT * from barang_ds;

SELECT DISTINCT Pelanggan.id_customer, Pelanggan.nama, Pelanggan.cabang_sales, barang_ds.nama_barang FROM Pelanggan 
INNER JOIN penjualan_ds ON Pelanggan.id_customer=penjualan_ds.id_customer
INNER JOIN barang_ds ON penjualan_ds.id_barang = barang_ds.kode_barang;

