# DamanScript
A collection of script to automate simple task
1. single_telnet.sh untuk login telnet dengan parameter IP, username dan password. Kemudian menjalankan perintah show card.
contoh command:
./single_telnet.sh 172.28.132.176 zte zte

2.1. zte_telnet untuk login pada perangkat zte dengan password default zte zte atau menggunakan NIK
contoh command:
./zte_telnet.sh 172.28.132.176

2.2. zte_loop untuk login otomatis pada banyak IP sekaligus menggunakan script zte_telnet
masukkan IP yang diinginkan pada variable IP
contoh command:
./zte_loop.sh

3.1. huawei_telnet fungsi sama seperti login zte, hanya berbeda username dan password
contoh command:
./huawei_telnet.sh 172.28.177.170

3.2. huawei_loop fungsi sama seperti zte loop, ubah variable IP untuk menentukan alamat IP tujuan
contoh command:
./huawei_loop.sh
