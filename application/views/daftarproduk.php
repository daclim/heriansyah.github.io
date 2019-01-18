<!DOCTYPE html>
<html>
<head>
  <title>Export Excel CI</title>
</head>
<body>
<h1>Data Produk</h1><hr>
<a href="<?php echo base_url("welcome/export"); ?>">Export ke Excel</a><br><br>
<table border="1" cellpadding="8">
<tr>
  <th>Id Produk</th>
  <th>Gambar</th>
  <th>Nama Produk</th>
  <th>Stok Barang</th>
  <th>Barang terjual</th>
  <th>Harga</th>
  <th>Alamat Barang</th>
  <th>Type Barang</th>
  <th>Deskripsi</th>
</tr>
<?php
if( ! empty($produk)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
  foreach($produk as $data){ // Lakukan looping pada variabel Produk dari controller
    echo "<tr>";
    echo "<td>".$data->id_produk."</td>";
    echo "<td>".$data->gambar."</td>";
    echo "<td>".$data->nama_produk."</td>";
    echo "<td>".$data->stok."</td>";
    echo "<td>".$data->terjual."</td>";
    echo "<td>".$data->harga."</td>";
    echo "<td>".$data->lokasi."</td>";
    echo "<td>".$data->type."</td>";
    echo "<td>".$data->deskripsi."</td>";
    echo "</tr>";
  }
}else{ // Jika data tidak ada
  echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
}
?>
</table>

</body>
</html>