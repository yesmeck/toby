# Toby

Ruby 版淘宝 API SDK

## 安装

```
gem install toby
```

## 示例

### taobao.item.get 得到单个商品信息

```ruby
require "toby"

client = Toby::Client.new(:app_key => APP_KEY, :app_secret => APP_SECRET)
request = Toby::Request.create("taobao.item.get")
request.num_iid = 13364998803
# 默认获取所有 fields
request.fields = "detail_url,num_iid,title,nick,type,cid,seller_cids,pic_url,num,location,price"
item = client.execute(request)
=> #<Hashie::Mash cid=50010368 detail_url="http://item.taobao.com/item.htm?id=13364998803&spm=2014.12350568.0.0" location=#<Hashie::Mash city="嘉兴" state="浙江"> nick="勍杰旗舰店" num=992342 num_iid=13364998803 pic_url="http://img01.taobaocdn.com/bao/uploaded/i1/T1NV6JXltiXXbNURc1_042147.jpg" price="100.00" seller_cids=",469730817,437939819,437939818,441075878,437938900,437938899,437938898," title="正品开车防炫目司机墨镜太阳镜夜视镜偏光镜夹片钓鱼近视眼镜男女" type="fixed">
```
