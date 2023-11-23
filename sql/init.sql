# データベースsakeの作成
set names utf8;
drop database if exists sake;
create database sake character set utf8 collate utf8_general_ci;

# ユーザーkokiに、パスワードsyakeを設定し、データベースsakeに対するすべての権限を付与
grant all privileges on sake.* to koki@localhost identified by 'syake';

# データベースsakeを使用する
use sake;

# テーブルhyogoの作成
create table hyogo(
    ident int auto_increment primary key,
    name varchar(50) not null,
    rice varchar(50),
    malt varchar (50),
    materials varchar(50),
    rice_percent int,
    malt_percent int,
    ALC int,
    image varchar(50),
    genre varchar(20)
);

# テーブルhyogoへデータを入力
#sanyou
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献　大吟醸　袋搾り斗瓶取り', '特A地区播州吉川産山田錦', 40, 'sanyou1.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献　大吟醸', '特A地区播州吉川産山田錦', 40, 'sanyou2.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献　純米大吟醸　播州吉川産山田錦35', '特A地区播州吉川産山田錦', 35, 'sanyou3.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献 鉱山熟成大吟醸 明壽蔵', '特A地区播州吉川産山田錦', 40, 'sanyou4.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献　純米酒', '兵庫夢錦', 70, 'sanyou5.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献 純米吟醸 千年の藤', '兵庫夢錦', 60, 'sanyou6.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('播州一献 純米吟醸 楓のしずく', '兵庫夢錦', 60, 'sanyou7.png', 'sanyou');
insert into hyogo(name, rice_percent, image, genre) values('播州一献　本醸造', 70, 'sanyou8.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('宍粟市限定三笑　生酛純米', '兵庫夢錦', 65, 'sanyou9.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('宍粟市限定 播州一献 庭酒', '兵庫夢錦', 90, 'sanyou10.png', 'sanyou');
insert into hyogo(name, rice_percent, image, genre) values('冬季限定播州一献 本醸造 にごり酒', 70, 'sanyou11.png', 'sanyou');
insert into hyogo(name, rice_percent, image, genre) values('冬季限定 播州一献 本醸造 しぼりたて', 70, 'sanyou12.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('通年 播州一献 純米 北錦', '兵庫北錦', 65, 'sanyou13.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('通年播州一献 純米吟醸 北錦', '兵庫北錦', 55, 'sanyou14.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('通年播州一献　超辛 純米', '兵庫北錦', 60, 'sanyou15.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('通年播州一献 超辛 純米吟醸', '特A地区播州吉川産山田錦', 55, 'sanyou16.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('通年播州一献 超辛 純米大吟醸', '特A地区播州吉川産山田錦', 45, 'sanyou17.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('(1月)生(7月)火入れ播州一献 純米吟醸 ののさん', '山田錦／兵庫夢錦', 55/60, 'sanyou18.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('（3月）生（8月）火入れ播州一献 純米吟醸　愛山', '播州産愛山', 50, 'sanyou19.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('2月～4月播州一献 純米吟醸 SPRING SHINE', '特A地区播州吉川産山田錦', 55, 'sanyou20.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('（4月）生（9月）火入れ播州一献 山廃純米 愛山', '播州産愛山', 65, 'sanyou21.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('5月～8月播州一献 純米 夏辛', '兵庫県産山田錦', 60, 'sanyou22.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('6月～播州一献 純米吟醸 夏のうすにごり', '山田錦／兵庫夢錦', 55/60, 'sanyou23.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('9月～11月播州一献 純米吟醸 ひやおろし', '播州産　山田錦', 55, 'sanyou24.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('9月播州一献 純米大吟醸　 北錦', '兵庫北錦', 50, 'sanyou25.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('10月播州一献 純米吟醸 山田錦', '特A地区播州吉川産山田錦', 55, 'sanyou26.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('11月播州一献　七宝　純米　生原酒', '兵庫北錦', 65, 'sanyou27.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('11月播州一献　七宝　純米　澱絡み生', '兵庫北錦', 65, 'sanyou28.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('11月～播州一献　七宝　純米 超辛 生', '兵庫北錦', 60, 'sanyou29.png', 'sanyou');
insert into hyogo(name, rice, rice_percent, image, genre) values('12月～播州一献　七宝　純米大吟醸　生', '兵庫北錦', 50, 'sanyou30.png', 'sanyou');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, image, genre) values('兵庫県限定播州一献 純米吟醸「EPIC」', '愛山', '吉川産山田錦', 60, 55, 'sanyou31.png', 'sanyou');

# honda
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米酒 黒ひげ ひやおろし', '兵庫県特A地区産山田錦', 65, 16, 'honda1.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米　神力　ひやおろし', '兵庫県たつの市御津町中島産神力', 65, 18, 'honda2.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米　山田錦　ひやおろし', '兵庫県特A地区産山田錦', 65, 18, 'honda3.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米　山田穂　ひやおろし', '兵庫県多可郡多可町中区産山田穂', 65, 18, 'honda4.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒　ドラゴンスパークリング', '兵庫県特A地区産山田錦', 65, 14, 'honda5.png', 'honda');
insert into hyogo(name, ALC, image, genre) values('Terroir A', 43, 'honda45.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸『米のささやき』', '山田錦', 50, 16, 'honda6.jpg', 'honda');
insert into hyogo(name, ALC, image, genre) values('熟成古酒　玄妙甘蜜 ', 14, 'honda7.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸　秋津', '兵庫県特A地区秋津産山田錦', 35, 16, 'honda8.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸　米のささやきYK40-50', '兵庫県特A地区産山田錦', 40-50, 17, 'honda9.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸　米のささやきYK35', '兵庫県特A地区産山田錦', 35, 17, 'honda10.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米テロワール 社', '兵庫県特A地区産山田錦', 65, 16, 'honda11.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米テロワール 東条', '兵庫県特A地区産山田錦', 65, 16, 'honda12.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米テロワール 吉川 ', '兵庫県特A地区産山田錦', 65, 16, 'honda13.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米　生もと仕込み', '兵庫県特A地区産山田錦', 65, 16, 'honda14.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸　上三草', '兵庫県特A地区産山田錦', 35, 16, 'honda15.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸　吉川米田 ', '兵庫県特A地区産山田錦', 35, 17, 'honda16.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別本醸造　誠龍', '山田錦20％五百万石80％', 65, 15, 'honda17.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸　千鶴万亀', '兵庫県特A地区産山田錦', 35-40, 16, 'honda18.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸荒走り', '兵庫県特A地区産山田錦', 35, 18, 'honda19.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生吟　米のささやき', '兵庫県特A地区産山田錦', 50, 17, 'honda20.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸　ドラゴン青 Episode１', '兵庫県特A地区産山田錦', 50, 16, 'honda21.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸　ドラゴン 黒 Episode２', '兵庫錦', 60, 16, 'honda22.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒　ドラゴン Episode３', '山田錦20％五百万石80％', 65, 16, 'honda23.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米　ドラゴン赤', '兵庫県特A地区産山田錦', 65, 16, 'honda24.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒　ドラゴン緑', '兵庫県豊岡市産減農薬五百万石', 65, 16, 'honda25.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒 姫路きくこうぼのお酒', '山田錦', 65, 13, 'honda26.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒 姫路さぎそうこうぼのお酒 ', '山田錦', 65, 15, 'honda27.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('龍力　純米大吟醸２０', '兵庫県特A地区産山田錦', 20, 16, 'honda28.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('龍力　純米８０', '兵庫県特A地区産山田錦', 80, 16, 'honda29.jpg', 'honda');
insert into hyogo(name, ALC, image, genre) values('熟成古酒　玄妙', 14, 'honda30.jpg', 'honda');
insert into hyogo(name, ALC, image, genre) values('熟成古酒　玄妙　Premium', 15, 'honda31.png', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('焼酎 天光秋津', '山田錦米粉・大吟醸酒粕', 40, 'honda32.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('焼酎 龍', '山田錦米粉・大吟醸酒粕', 25, 'honda33.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('焼酎 吟のわけまえ', '山田錦米粉・大吟醸酒粕', 30, 'honda34.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('焼酎 播龍もったいなぁ', '山田錦米粉・大吟醸酒粕', 25, 'honda35.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('杉樽焼酎　香之仙人 ', '山田錦米粉・大吟醸酒粕', 25, 'honda36.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('極上酒梅香', '綾部山特上梅', 15, 'honda37.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('酒梅香', '綾部山特上梅', 17, 'honda38.jpg', 'honda');
insert into hyogo(name, materials, ALC, image, genre) values('紫蘇酒　若紫', '無農薬赤紫蘇', 14, 'honda39.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒 姫路城さくらこうぼのお酒', '山田錦', 65, 15, 'honda40.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米酒 播州辛口 ひやおろし', '兵庫県特A地区産山田錦', 65, 15, 'honda41.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸 龍力 ひやおろし', '兵庫県特A地区産山田錦', 60, 16, 'honda42.png', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒 姫路城SAKURA SPARKLING ', '山田錦', 65, 14, 'honda43.jpg', 'honda');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('神龍錦', '神龍錦', 60, 16, 'honda44.jpg', 'honda');

# simomura
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶⼤吟醸伝授', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 38, 17, 'simomura1.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶吟醸 袋しぼり 仕込第三⼗五號 ⽣', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 50, 17, 'simomura2.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶袋しぼり 仕込第⼆⼗九號 ⽣', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 55, 17, 'simomura3.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶吟醸 芳醇辛口スタンダード', '兵庫夢錦：兵庫県産', '山田錦：兵庫県産米', 55, 15, 'simomura4.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 ⼭廃純⽶スタンダード', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 16, 'simomura5.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶スタンダード', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 15, 'simomura6.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶吟醸 超⾟ ⿊ ⽕⼊れ', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura7.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 ⼭廃純⽶ ⼭⽥錦 ⼋割磨き', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 80, 15, 'simomura8.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米大吟醸 伝授 生', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 38, 17, 'simomura9.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶ おりがらみ 生', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura10.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米吟醸 芳醇辛口 おりがらみ 生', '兵庫夢錦：兵庫県産', '山田錦：兵庫県産米', 55, 17, 'simomura11.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純⽶　生', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura12.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米吟醸　芳醇辛口 生', '兵庫夢錦：兵庫県産', '山田錦：兵庫県産米', 55, 17, 'simomura13.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 山廃純米 兵庫夢錦 五拾五 生', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura14.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米 活性すくい汲み にごり酒 生', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura15.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米吟醸 夏の芳醇超辛 生', '兵庫夢錦：兵庫県産', '山田錦：兵庫県産米', 55, 17, 'simomura16.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 純米吟醸 超辛 黒 生', '兵庫夢錦：兵庫県産', '兵庫夢錦：兵庫県産米', 55, 17, 'simomura17.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 春待ちこがれて 生', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 80, 17, 'simomura18.png', 'simomura');
insert into hyogo(name, rice, malt, rice_percent, ALC, image, genre) values('奥播磨 ⼭廃純⽶ ⼭⽥錦 ⼋割磨き 生', '⼭⽥錦：兵庫県産', '⼭⽥錦：兵庫県産⽶', 80, 17, 'simomura19.png', 'simomura');

#yamana
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('奥丹波 純米吟醸', '五百万石', 60, 15,'yamana1.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('清酒 奥丹波', '山田錦', 80, 15,'yamana2.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('奥丹波 特別純米', '山田錦', 60, 15,'yamana3.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('自然酒 ◯陽酒', '山田錦（有機JAS認定）', 60, 14,'yamana4.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('自然酒 △雨酒', '岡山県産 雄町（有機栽培）', 60, 15,'yamana5.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('自然酒 □土酒', '野条穂（有機農法）', 60, 14,'yamana6.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('Hyogo Sake 85', 'Hyogo Sake 85', 60, 16,'yamana7.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('Hyogo Sake 85 真吟', 'Hyogo Sake 85', 60, 15,'yamana8.png', 'yamana');
insert into hyogo(name, rice, ALC, image, genre) values('千歳 山田錦', '山田錦', 15,'yamana9.png', 'yamana');
insert into hyogo(name, rice, ALC, image, genre) values('千歳 愛山', '愛山', 16,'yamana10.png', 'yamana');
insert into hyogo(name, rice, ALC, image, genre) values('千歳 野条穂', '野条穂', 16,'yamana11.png', 'yamana');
insert into hyogo(name, rice, ALC, image, genre) values('千歳 Hyogo Sake 85', 'Hyogo Sake 85', 15,'yamana12.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('奥丹波 冷やおろし', '五百万石', 70, 17,'yamana13.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('萬歳', '兵庫北錦', 70, 16,'yamana15.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸 イセヒカリ', 'イセヒカリ（自然栽培）', 50, 16,'yamana17.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('千歳 ルネサンス Hyogo Sake 85', 'Hyogo Sake 85', 80, 16,'yamana18.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('千歳 ルネサンス 野条穂', '野条穂', 80, 16,'yamana19.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('千歳 ルネサンス 山田錦', '山田錦', 80, 16,'yamana20.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('澱絡み', '五百万石', 60, 14, 'yamana14.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('Hyogo Sake 85　三宝ダム坑道内熟成酒', 'Hyogo Sake 85', 60, 16,'yamana21.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('KINENA! OKUTAMBA ASSEMBLAGE', '雄町米・イセヒカリ', 50, 15,'yamana23.png', 'yamana');
insert into hyogo(name, rice, ALC, image, genre) value('傳', '非公開', 16, 'yamana16.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('奥丹波 純米大吟醸', '山田錦', 40, 16, 'yamana24.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('卓', '五百万石', 50, 16,'yamana25.png', 'yamana');
insert into hyogo(name, materials, ALC, image, genre) values('奥丹波 ゆず', '純米酒・柚子果汁・甜菜糖', 7,'yamana26.png', 'yamana');
insert into hyogo(name, materials, ALC, image, genre) values('奥丹波 うめ', '純米酒・梅果汁・甜菜糖', 8,'yamana27.png', 'yamana');
insert into hyogo(name, materials, ALC, image, genre) values('奥丹波 いちご酒', '純米酒・苺果汁・甜菜糖', 9,'yamana28.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('搾りたて', 'Hyogo Sake 85', 65, 16,'yamana29.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('早春賦', '五百万石', 60, 16,'yamana30.png', 'yamana');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('奥丹波 醪', '複数米', 70, 16,'yamana31.png', 'yamana');

#tubo
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸雪彦山　無ろ過原酒', '兵庫県産山田錦', 60, 18, 'tubo1.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米原酒　雪彦山', '山田錦', 70, 18, 'tubo2.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸　雪彦山', '兵庫県産山田錦', 40, 17, 'tubo3.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('吟醸酒　雪彦山', '米（国産）・米麹（国産米）・醸造アルコール', 60, 15, 'tubo4.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米酒　雪彦山', '兵庫県産山田錦', 70, 15, 'tubo5.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸　雪彦山', '兵庫県産山田錦', 60, 15, 'tubo6.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('本醸造　雪彦山', '兵庫県産山田錦', 60, 15, 'tubo7.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('純米吟醸雪彦山　夢なでしこ', '米（国産）・米麹（国産米）', 60, 16, 'tubo8.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('山廃純米　雪彦山', '兵庫県産五百万石', 60, 16, 'tubo9.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸雪彦山　愛山1801', '愛山', 60, 17, 'tubo10.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸原酒雪彦山　GIはりま', '山田錦', 60, 18, 'tubo11.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米雪彦山　鬼辛', '五百万石', 60, 17, 'tubo12.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米大吟醸　雪彦山　Quarter', '兵庫県加東市特A地区の特上米山田錦', 25, 17, 'tubo13.jpg', 'tubo');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸　雪彦山　しずく酒', '兵庫県産山田錦', 40, 17, 'tubo14.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('しぼりたて　金壺', '米（国産）・米麹（国産米）・醸造アルコール', 60, 20, 'tubo15.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('本醸造　金壺', '米（国産）・米麹（国産米）・醸造アルコール', 60, 15, 'tubo16.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('佳撰　金壺', '米（国産）・米麹（国産米）・醸造アルコール', 70, 15, 'tubo17.jpg', 'tubo');
insert into hyogo(name, materials, rice_percent, ALC, image, genre) values('にごり酒　金壺', '米（国産）・米麹（国産米）・醸造アルコール', 60, 15, 'tubo18.jpg', 'tubo');
insert into hyogo(name, materials, ALC, image, genre) values('柚丸', '清酒・アガベ(竜舌蘭)エキス・柚子果汁', 14, 'tubo19.jpg', 'tubo');
insert into hyogo(name, materials, ALC, image, genre) values('いちごのお酒', '清酒・いちご・果糖・クエン酸・酸化防止剤（ビタミンC）', 7, 'tubo20.jpg', 'tubo');


#siro
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸白鷹', '兵庫県吉川町特A地区産山田錦100％', 35, 16.0-16.9, 'siro1.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸古酒白鷹', '兵庫県吉川町特A地区産山田錦100％', 35, 16, 'siro2.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('大吟醸純米　悦蔵　磨35', '兵庫県吉川町産特Ａ山田錦100％', 35, 17, 'siro3.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・大吟醸純米 極上白鷹', '兵庫県吉川町特A地区産山田錦100％', 50, 16.0-16.9, 'siro4.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('悦蔵　吟醸純米 一ッ火原酒', '兵庫県吉川特A地区産山田錦100％', 60, 18, 'siro5.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・吟醸純米 超特撰白鷹', '兵庫県吉川町特A地区産山田錦100％', 60, 16.0-16.9, 'siro6.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('吟醸山田錦', '兵庫県吉川町特A地区産山田錦100％', 60, 15.0-15.9, 'siro7.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('吟醸生貯蔵酒', '兵庫県吉川特A地区産山田錦100％', 60, 15.0-15.9, 'siro8.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('純米吟醸　江の島乃風', '兵庫県吉川特A地区産山田錦100％', 60, 16.0-16.9, 'siro9.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('吟醸純米 生原酒 悦蔵', '兵庫県吉川特A地区産山田錦100％', 60, 18, 'siro10.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('悦蔵　特別純米　一ッ火', '兵庫県吉川特A地区産山田錦100％', 70, 16.0-16.9, 'siro11.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('特別純米酒　宮水の郷', '兵庫県吉川特A地区産山田錦100％', 70, 16.0-16.9, 'siro12.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・特別純米 金松白鷹', '兵庫県吉川町特A地区産山田錦100％', 70, 16.0-16.9, 'siro13.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・特別純米 伊勢神宮・御料酒蔵純米酒', '兵庫県吉川町特A地区産山田錦100％', 70, 16.0-16.9, 'siro14.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・特別純米 辛口純米', '兵庫県吉川町特A地区産山田錦100％', 70, 16.0-16.9, 'siro15.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('白鷹特別純米　赤ラベル', '兵庫県吉川特A地区産山田錦100％', 70, 16.0-16.9, 'siro16.jpg', 'siro');
insert into hyogo(name, rice_percent, ALC, image, genre) values('生もと・本醸造 特撰黒松白鷹', 70, 16.0-16.9, 'siro17.jpg', 'siro');
insert into hyogo(name, rice_percent, ALC, image, genre) values('生もと・本醸造 上撰青松白鷹', 70, 15.0-15.9, 'siro18.jpg', 'siro');
insert into hyogo(name, rice_percent, ALC, image, genre) values('白鷹御神酒', 70, 15.0-15.9, 'siro19.jpg', 'siro');
insert into hyogo(name, materials, ALC, image, genre) values('純米焼酎　ENOSHIMA BREEZE', '米、米麹', 25, 'siro20.jpg', 'siro');
insert into hyogo(name, rice, ALC, image, genre) values('長期熟成 樽貯蔵純米焼酎ハクタカ', '特A山田錦', 25, 'siro21.jpg', 'siro');
insert into hyogo(name, rice, ALC, image, genre) values('長期熟成 純米焼酎ハクタカ', '特A山田錦', 25, 'siro22.jpg', 'siro');
insert into hyogo(name, rice_percent, ALC, image, genre) values('クールハクタカ生貯蔵酒', 70, 15.0-15.9, 'siro23.jpg', 'siro');
insert into hyogo(name, rice_percent, ALC, image, genre) values('冷晴', 70, 15.0-15.9, 'siro24.jpg', 'siro');
insert into hyogo(name, materials, ALC, image, genre) values('白鷹梅酒～特別純米酒仕込み～', '清酒（国内製造純米酒）、梅（国産）、氷砂糖', 8, 'siro25.jpg', 'siro');
insert into hyogo(name, materials, ALC, image, genre) values('白鷹梅酒～純米焼酎仕込み～', '米焼酎（国内製造）、梅（国産）、氷砂糖', 15, 'siro26.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・純米 味吟醸(禄水苑)', '兵庫県吉川町特A地区産山田錦100％', 60, 16.0-16.9, 'siro27.jpg', 'siro');
insert into hyogo(name, rice, rice_percent, ALC, image, genre) values('生もと・純米 超辛口(禄水苑)', '兵庫県吉川町特A地区産山田錦100％', 70, 16.0-16.9, 'siro28.jpg', 'siro');
insert into hyogo(name, image, genre) values('生もと・本醸造 清酒阪神タイガース菰冠', 'siro29.jpg', 'siro');

#miyako
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('純米大吟醸　無限大', '兵庫県産　山田錦', '兵庫県産　山田錦', 40, 40, 16.5, 'miyako1.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('大吟醸　凜美', '兵庫県産　山田錦', '兵庫県産　山田錦', 40, 40, 16.5, 'miyako2.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('大吟醸　凜美吉川', '特A地域指定三木市吉川町産山田錦', '特A地域指定三木市吉川町産山田錦', 40, 40, 16.5, 'miyako3.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('大吟醸　瑞寶', '兵庫県産　山田錦', '兵庫県産　山田錦', 35, 35, 16.5, 'miyako4.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('純米吟醸　暁乃都美人', '五百万石', '五百万石', 55, 55, 15.5, 'miyako5.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('熟成　純米吟醸　若宮の雫生原酒', '兵庫夢錦', '兵庫夢錦', 60, 60, 16.5, 'miyako6.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('山廃純米　雲乃都美人', '兵庫県産　五百万石', '兵庫県産　五百万石', 65, 65, 16, 'miyako7.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('特別純米　風乃都美人', '兵庫県産　山田錦', '兵庫県産　山田錦', 60, 60, 15.5, 'miyako8.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('山廃純米　超辛口', '五百万石', '五百万石', 65, 65, 15.5, 'miyako9.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('超上撰', '日本晴', '五百万石', 70, 70, 16.5, 'miyako10.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('辛口　渦酒', '日本晴', '五百万石', 70, 70, 15.5, 'miyako11.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('辛口　北前船風', '日本晴', '五百万石', 70, 70, 15.5, 'miyako12.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('銀撰', '日本晴', '五百万石', 70, 70, 15.5, 'miyako13.jpg', 'miyako');
insert into hyogo(name, rice, malt, image, genre) values('槽掛け天秤搾り　大吟醸無濾過生原酒　薄にごり　', '兵庫県産山田錦', '兵庫県産山田錦', 'miyako14.jpg', 'miyako');
insert into hyogo(name, rice, malt, rice_percent, malt_percent, ALC, image, genre) values('冷酒　生麗', '日本晴', '五百万石', 70, 70, 13.5, 'miyako15.jpg', 'miyako');
insert into hyogo(name, materials, ALC, image, genre) values('梅酒　梅の恋', '日本酒　南高梅（紀州和歌山産）醸造用アルコール 果糖液糖', 11, 'miyako16.jpg', 'miyako');
insert into hyogo(name, materials, ALC, image, genre) values('にごり梅', '日本酒、南高梅（紀州和歌山産）、醸造アルコール、果糖液糖、梅酒果肉', 11, 'miyako17.jpg', 'miyako');
insert into hyogo(name, materials, ALC, image, genre) values('淡路なるとオレンジ酒', '日本酒、鳴門オレンジピューレ（国産）、グラニュー糖', 10, 'miyako18.jpg', 'miyako');
