## letter_openerの設定。

### 気をつける部分
`config/environments/development.rb`を設定。</br>
※ ***順番逆だと動かない***

```ruby
config.action_mailer.delivery_method = :sendmail
config.action_mailer.delivery_method = :letter_opener_web
```
