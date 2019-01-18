<html>
<head>
  <title>Form Import</title>
  
  <!-- Load File jquery.min.js yang ada difolder js -->
  <script src="<?php echo base_url('js/jquery.min.js'); ?>"></script>
  
  <script>
  $(document).ready(function(){
    // Sembunyikan alert validasi kosong
    $("#kosong").hide();
  });
  </script>
</head>
<body>
  <h3>Form Import</h3>
  <hr>
  
  <a href="<?php echo base_url("excel/format.xlsx"); ?>">Download Format</a>
  <br>
  <br>
  
  <!-- Buat sebuah tag form dan arahkan action nya ke controller ini lagi -->
  <form method="post" action="<?php echo base_url("welcome/form"); ?>" enctype="multipart/form-data">
    <!-- 
    -- Buat sebuah input type file
    -- class pull-left berfungsi agar file input berada di sebelah kiri
    -->
    <input type="file" name="file">
    
    <!--
    -- BUat sebuah tombol submit untuk melakukan preview terlebih dahulu data yang akan di import
    -->
    <input type="submit" name="preview" value="Preview">
  </form>
  
  <?php
  if(isset($_POST['preview'])){ // Jika user menekan tombol Preview pada form 
    if(isset($upload_error)){ // Jika proses upload gagal
      echo "<div style='color: red;'>".$upload_error."</div>"; // Muncul pesan error upload
      die; // stop skrip
    }
    
    // Buat sebuah tag form untuk proses import data ke database
    echo "<form method='post' action='".base_url("welcome/import")."'>";
    
    // Buat sebuah div untuk alert validasi kosong
    echo "<div style='color: red;' id='kosong'>
    Semua data belum diisi, Ada <span id='jumlah_kosong'></span> data yang belum diisi.
    </div>";
    
    echo "<table border='1' cellpadding='8'>
    <tr>
      <th colspan='5'>Preview Data</th>
    </tr>
    <tr>
      <th>NIS</th>
      <th>Nama</th>
      <th>Jenis Kelamin</th>
      <th>Alamat</th>
    </tr>";
    
    $numrow = 1;
    $kosong = 0;
    
    // Lakukan perulangan dari data yang ada di excel
    // $sheet adalah variabel yang dikirim dari controller
    foreach($sheet as $row){ 
      // Ambil data pada excel sesuai Kolom
      $id_produk = $row['A']; // Ambil data NIS
      $gambar = $row['B']; // Ambil data nama
      $nama_produk = $row['C']; // Ambil data jenis kelamin
      $stok = $row['D'];
      $terjual = $row['E'];
      $harga = $row['F'];
      $confirm = $row['G'];
      $lokasi = $row['H'];
      $type = $row['I'];
      $deskripsi = $row['J']; // Ambil data alamat
      
      // Cek jika semua data tidak diisi
      if(empty($id_produk) && empty($gambar) && empty($nama_produk) && empty($stok)
  			&& empty($terjual)&& empty($harga)&& empty($confirm)&& empty($lokasi)&& empty($type)
  			&& empty($deskripsi))
        continue; // Lewat data pada baris ini (masuk ke looping selanjutnya / baris selanjutnya)
      
      // Cek $numrow apakah lebih dari 1
      // Artinya karena baris pertama adalah nama-nama kolom
      // Jadi dilewat saja, tidak usah diimport
      if($numrow > 1){
        // Validasi apakah semua data telah diisi
        $id_produk_td = ( ! empty($id_produk))? "" : " style='background: #E07171;'"; // Jika NIS kosong, beri warna merah
        $gambar_td = ( ! empty($gambar))? "" : " style='background: #E07171;'"; // Jika Nama kosong, beri warna merah
        $np_td = ( ! empty($nama_produk))? "" : " style='background: #E07171;'"; // Jika Jenis Kelamin kosong, beri warna merah
        $stok_td = ( ! empty($stok))? "" : " style='background: #E07171;'";
        $terjual_td = ( ! empty($terjual))? "" : " style='background: #E07171;'";
        $harga_td = ( ! empty($harga))? "" : " style='background: #E07171;'";
        $confirm_td = ( ! empty($confirm))? "" : " style='background: #E07171;'";
        $lokasi_td = ( ! empty($lokasi))? "" : " style='background: #E07171;'";
        $type_td = ( ! empty($type))? "" : " style='background: #E07171;'";
        $deskripsi_td = ( ! empty($deskripsi))? "" : " style='background: #E07171;'"; // Jika Alamat kosong, beri warna merah
        
        // Jika salah satu data ada yang kosong
        if(empty($id_produk) or empty($gambar) or empty($nama_produk) or empty($stok)
  			or empty($terjual)or empty($harga)or empty($confirm)or empty($lokasi)or empty($type)
  			or empty($deskripsi)){
          $kosong++; // Tambah 1 variabel $kosong
        }
        
        echo "<tr>";
        echo "<td".$id_produk_td.">".$id_produk."</td>";
        echo "<td".$gambar_td.">".$gambar."</td>";
        echo "<td".$np_td.">".$nama_produk."</td>";
        echo "<td".$stok_td.">".$stok."</td>";
        echo "<td".$terjual_td.">".$terjual."</td>";
        echo "<td".$harga_td.">".$stok."</td>";
        echo "<td".$confirm_td.">".$confirm."</td>";
        echo "<td".$lokasi_td.">".$lokasi."</td>";
        echo "<td".$type_td.">".$type."</td>";
        echo "<td".$deskripsi_td.">".$deskripsi."</td>";
        echo "</tr>";
      }
      
      $numrow++; // Tambah 1 setiap kali looping
    }
    
    echo "</table>";
    
    // Cek apakah variabel kosong lebih dari 0
    // Jika lebih dari 0, berarti ada data yang masih kosong
    if($kosong > 0){
    ?>  
      <script>
      $(document).ready(function(){
        // Ubah isi dari tag span dengan id jumlah_kosong dengan isi dari variabel kosong
        $("#jumlah_kosong").html('<?php echo $kosong; ?>');
        
        $("#kosong").show(); // Munculkan alert validasi kosong
      });
      </script>
    <?php
    }else{ // Jika semua data sudah diisi
      echo "<hr>";
      
      // Buat sebuah tombol untuk mengimport data ke database
      echo "<button type='submit' name='import'>Import</button>";
      echo "<a href='".base_url("index.php/welcome")."'>Cancel</a>";
    }
    
    echo "</form>";
  }
  ?>
</body>
</html>