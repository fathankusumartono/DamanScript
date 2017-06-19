# DamanScript
A collection of script to automate simple task
1. single_telnet.sh untuk login telnet dengan parameter IP, username dan password. Kemudian menjalankan perintah show card.
Contoh command:
./single_telnet.sh 172.28.132.176 user pass

2. zte_telnet untuk login pada perangkat zte dengan password default atau menggunakan NIK
Contoh command:
./zte_telnet.sh 172.28.132.176

3. zte_loop untuk login otomatis pada banyak IP sekaligus menggunakan script zte_telnet. Masukkan IP yang diinginkan pada variable IP
Contoh command:
./zte_loop.sh

4. huawei_telnet fungsi sama seperti login zte, hanya berbeda username dan password
Contoh command:
./huawei_telnet.sh 172.28.177.170

5. huawei_loop fungsi sama seperti zte loop, ubah variable IP untuk menentukan alamat IP tujuan
Contoh command:
./huawei_loop.sh
