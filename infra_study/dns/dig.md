### digコマンド
`dig`コマンド </br>
`dig (domeain information groper)`は、ネームサーバに対して、ドメイン情報を問い合わせることで、IPアドレスやホスト名の情報を取得する。トラブルシューティングや、DNSのパフォーマンス監視などに便利。([dig](https://en.wikipedia.org/wiki/Dig_(command) ))


#### dig A <ドメイン> @<ネームサーバ>
ホスト名からIPアドレスを検索する。(Aレコード)
```command
$ dig A google.com @ns2.google.com

; <<>> DiG 9.10.6 <<>> A google.com @ns2.google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4442
;; flags: qr aa rd; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		300	IN	A	216.58.197.174

;; Query time: 53 msec
;; SERVER: 216.239.34.10#53(216.239.34.10)
;; WHEN: Fri Apr 10 16:57:41 JST 2020
;; MSG SIZE  rcvd: 55
```


#### dig MX <ドメイン> @<ネームサーバ>
ドメイン名からメールサーバーを検索する。(MXレコード)
```command
$ dig MX google.com @ns1.google.com

; <<>> DiG 9.10.6 <<>> MX google.com @ns1.google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 2592
;; flags: qr aa rd; QUERY: 1, ANSWER: 5, AUTHORITY: 0, ADDITIONAL: 11
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;google.com.			IN	MX

;; ANSWER SECTION:
google.com.		600	IN	MX	20 alt1.aspmx.l.google.com.
google.com.		600	IN	MX	30 alt2.aspmx.l.google.com.
google.com.		600	IN	MX	40 alt3.aspmx.l.google.com.
google.com.		600	IN	MX	10 aspmx.l.google.com.
google.com.		600	IN	MX	50 alt4.aspmx.l.google.com.

;; ADDITIONAL SECTION:
alt1.aspmx.l.google.com. 293	IN	A	108.177.10.26
alt1.aspmx.l.google.com. 293	IN	AAAA	2607:f8b0:4003:c14::1a
alt2.aspmx.l.google.com. 293	IN	A	209.85.234.26
alt2.aspmx.l.google.com. 293	IN	AAAA	2607:f8b0:4001:c17::1b
alt3.aspmx.l.google.com. 293	IN	A	142.250.11.26
alt3.aspmx.l.google.com. 293	IN	AAAA	2607:f8b0:4024:c01::1a
aspmx.l.google.com.	293	IN	A	64.233.189.26
aspmx.l.google.com.	293	IN	AAAA	2404:6800:4008:c03::1a
alt4.aspmx.l.google.com. 293	IN	A	173.194.77.26
alt4.aspmx.l.google.com. 293	IN	AAAA	2607:f8b0:4023:401::1b

;; Query time: 81 msec
;; SERVER: 216.239.32.10#53(216.239.32.10)
;; WHEN: Fri Apr 10 18:16:44 JST 2020
;; MSG SIZE  rcvd: 367

```
