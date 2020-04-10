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
