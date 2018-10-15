//原始的卡片列表数据，需要经过过滤筛选
var originCardList = [
    {
        "id": "listenbook",
        "name": "听书",
        "caseList": ['“我想听书刀尖”', '“我想听斗破苍穹这本书”'],
        "show": true,
        "entry": "./drama/card.js",
        "caseRedDot": false,
        "version": 1,
        "content": {
            "listenBooks": [{
                "name": "从你的全世界路过",
                "coverPic": "http://wap.cmread.com/r/cover_file/4254/660074254/20160921105817/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660074254/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "我跳大神的那几年",
                "coverPic": "http://wap.cmread.com/r/cover_file/5902/660065902/20160910122056/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660065902/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "金星秀2016",
                "coverPic": "http://wap.cmread.com/r/cover_file/2084/660052084/20160816100157/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660052084/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "曾许诺",
                "coverPic": "http://wap.cmread.com/r/cover_file/2188/660042188/20160802104819/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660042188/index.htm?ln=32078_505537__0_&amp;srsc=1&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;nid=590001518",
                "dataSourceId": ""
            }, {
                "name": "亿万前妻不好追",
                "coverPic": "http://wap.cmread.com/r/cover_file/7105/660027105/20160707102448/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660027105/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "聊斋志异",
                "coverPic": "http://wap.cmread.com/r/cover_file/9732/640269732/20160414205516/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/640269732/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "孽世缘之双生",
                "coverPic": "http://wap.cmread.com/r/cover_file/3504/660063504/20160908094505/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660063504/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "百家讲坛：郦波评说曾国藩家训",
                "coverPic": "http://wap.cmread.com/r/cover_file/4890/407704890/20150615154156/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/407704890/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "麻雀",
                "coverPic": "http://wap.cmread.com/r/cover_file/1855/660041855/20160801182556/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660041855/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "一刻talks",
                "coverPic": "http://wap.cmread.com/r/cover_file/5134/601795134/20160303154736/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/601795134/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "凯叔讲故事",
                "coverPic": "http://wap.cmread.com/r/cover_file/5045/408135045/20150630174315/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/408135045/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "吴晓波频道",
                "coverPic": "http://wap.cmread.com/r/cover_file/4113/660034113/20160719141820/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660034113/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "秀丽江山",
                "coverPic": "http://wap.cmread.com/r/cover_file/0867/660040867/20160730001537/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660040867/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "郭德纲对口相声",
                "coverPic": "http://wap.cmread.com/r/cover_file/4053/406124053/20150417101706/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/406124053/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }, {
                "name": "微微一笑很倾城",
                "coverPic": "http://wap.cmread.com/r/cover_file/8178/660028178/20160708152916/cover600800.jpg",
                "detailUrl": "http://wap.cmread.com/r/660028178/index.htm?nid=590001405&amp;page=1&amp;purl=%2Fr%2Fp%2Flxts.jsp&amp;srsc=1&amp;ln=32078_502389__0_",
                "dataSourceId": ""
            }],
            "category": [{
                "title": "精品",
                "url": "http://wap.cmread.com/r/p/rm_kp.jsp?vt=3"
            }, {
                "title": "大咖",
                "url": "http://wap.cmread.com/r/p/fxdk_kp.jsp?vt=3"
            }, {
                "title": "都市",
                "url": "http://wap.cmread.com/r/p/dsxs_kp.jsp?vt=3"
            }, {
                "title": "玄幻",
                "url": "http://wap.cmread.com/r/p/xhcy_kp.jsp?vt=3"
            }],
            "bottomButton": [{
                "name": "更多听书",
                "url": "http://wap.cmread.com/r/p/cpts.jsp?vt=3"
            }]
        }
    },
    {
    "id": "news",
    "name": "新闻",
    "show": true,
    "caseList": ['“我要听新闻”', '“播报新闻”'],
    "entry": "./news/card.js",
    "caseRedDot": false,
    "version": 1
},

    {
    "id": "joker",
    "name": "笑话",
    "show": true,
    "caseList": ['“讲个笑话”', '“我想听笑话”'],
    "entry": "./joke/card.js",
    "caseRedDot": false,
    "version": 2,
    "content": {
        "jokers": [{
            "content": "曾经喜欢上一个女生，听说她喜欢dota厉害的男生，于是我就去苦练dota，1个月后，我把她忘得一干二净 。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "辣条存在的意义就是，你也许吃不起巴西烤肉北京烤鸭麻椒羊排铁板牛肉，但是你能吃得起巴西烤肉北京烤鸭麻椒羊排铁板牛肉味儿的辣条啊～",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "每个和我亲了嘴的，都会被我甩掉，也许你会觉得我太无情，其实我也很留恋亲嘴的那一刹，那种感觉真的很香，可我又有什么办法呢，吃田螺就是这样嘛！",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "因为你有双下巴，所以碰到任何困难都不要低头。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "女友参加公司百米短跑大奖赛。随着发令员一声枪响，我对女友大喊一声：“终点有你的快递！” 女友像离弦的箭一样取得了冠军。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "今天的我你爱理不理，明天的我换家理发店理。顺便再办张会员卡气死你。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "非洲黑妹去上海旅游，住进一宾馆。半夜失火，那非洲女人飞快向外跑。一消防员看到惊奇的说：“我的娘唉，都烧焦了还跑得这么快！”",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "俩屌丝聊天 屌甲：你说什么是勇气？ 屌乙：当你憋着一泡稀到处找厕所的时候，还敢试探性的放个屁！",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "老师 ：什么叫丧心病狂 …… 小明：就是你一边把鱼摁在水里 一边大喊劳资淹死你 劳资淹死你，老师陷入了沉思。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "我有多丑？在我十八岁那年，我妈看看我对我说 别人怀孕肚子里是羊水 我怀孕难道是硫酸吗？",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "今天迎面碰到前女友和她的新男友，我脑残地打了招呼，她男友问：你认识？她回答：嗯，你前辈。此男显然不理解，居然怯怯的问候：前辈好……",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "化学课上我摔坏了一根试管老师要我赔钱一根五块，但我身上有一张十块老师没五块找我，我俩面面相觑就在这尴尬的时刻，同学抓住我的手拿起另一根试管砸在地上，此刻大家响起了雷鸣般的掌声，传遍整栋教学楼………",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "晚上和媳妇看电视，媳妇：咱俩最近花钱太快了，以后零食少买点吧，尽量买点抗吃的，你说买点什么好呢？我说那就买一斤盐吧，最起码能吃一星期，媳妇：……………",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "一天，儿子问爸爸:“我是怎么来的？”爸爸说：”从网上下载的！”儿子又说：“不对，我们家三年前才有网啊！我都六岁了！”这时妈妈说了：“我们是蹭隔壁王叔叔家的网。”爸爸沉思了！",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "往年过年回家时，每次被亲戚说该嫁人了，要给我介绍对象这个问题。我都用一句话堵回去：“没我爸好的男人，我看不上。”当着我爸面，他们不可能跟我说介绍的这个小伙子比你爸强。然后我爸爸就十分感动，往我卡里打了好多钱…………",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "一匹小马要过河，旁边的老牛说:没事，河很浅，只到我膝盖，你可以过去。松鼠说:别听他的，那河很深的，我的同伴就被淹死了。这时马妈妈说:孩纸，别听那俩神经病的，我们走桥！",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "生病在床，男友端来鸡汤说：宝贝，趁热喝了吧。她感动的接过鸡汤：味道真好，你什么时候学会做鸡汤了？男友淡定的道：刚买了包香菇炖鸡面，我把面吃了。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "“今天和一女神表白她居然答应了，特激动。”“这就是你把她推下楼的理由？”警察问。“是她说要我等下辈子，我不是想快点娶她吗？”",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "室友行李箱的密码忘了，很着急，我比较爱研究东西，很早就知道这种箱子密码怎么回事，然后我就帮他打开了，室友感激不尽，称赞我厉害。。。    第二天，室友都在箱子上挂了个明锁。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }, {
            "content": "女生会出现周期性的烦躁、敏感、易怒情绪，但只要掌握这个周期并在这期间小心翼翼注意言行就能与她们融洽相处。为此，科学家经过长期跟踪调查，发现这个周期大概是每个月一次，每次持续三十天左右。",
            "url": "http://s1.voicecloud.cn/resources/lxCard/joke.html"
        }],
        "bottomButton": [{
            "name": "冷笑话",
            "url": "http://m.lengxiaohua.com/"
        }, {
            "name": "有声笑话",
            "url": "http://liteapp.ximalaya.com/25"
        }]
    }
}
, {
    "id": "novel",
    "name": "阅读",
    "caseList": ['“我想看大主宰”', '“我想看言情小说”'],
    "show": true,
    "entry": "./novel/card.js",
    "caseRedDot": false,
    "version": 3,
    "content": {
        "recommend": [{
            "name": "嫡女要狠",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/397586643?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=397586643",
            "dataSourceId": ""
        }, {
            "name": "炼器狂潮",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/405490932?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=405490932",
            "dataSourceId": ""
        }, {
            "name": "血歌行",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/410260480?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=410260480",
            "dataSourceId": ""
        }, {
            "name": "葬魂笔记",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/408535350?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=408535350",
            "dataSourceId": ""
        }, {
            "name": "绝世剑神",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/395434973?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=395434973",
            "dataSourceId": ""
        }, {
            "name": "锦绣良婚",
            "cover_pic": "http://download.voicecloud.cn/lingxi/novelcover/405059574?v=1",
            "detail_url": "http://wap.cmread.com/r/p/lxview.jsp?nid=372366505&vt=3&bid=405059574",
            "dataSourceId": ""
        }],
        "category": [{
            "title": "都市",
            "url": "http://wap.cmread.com/r/l/n.jsp?nid=358852585&vt=3"
        }, {
            "title": "玄幻",
            "url": "http://wap.cmread.com/r/l/n.jsp?nid=6891829&vt=3"
        }, {
            "title": "言情",
            "url": "http://wap.cmread.com/r/l/n.jsp?nid=6897898&vt=3"
        }, {
            "title": "免费",
            "url": "http://wap.cmread.com/r/p/mianfei.jsp?vt=3"
        }],
        "bottomButton": [{
            "name": "更多阅读",
            "url": "http://wap.cmread.com/r/p/lxindex.jsp?cm=D00104CZ"
        }]
    }
}
,{
      "id": "song",
      "name": "音乐",
      "show": true,
      "caseList": ['“我想听歌”', '“我想听音乐”'],
      "entry": "./song/card.js",
      "caseRedDot": false,
      "version": 1,
      "content":{"content":{"bottomButton":[{"name":"更多音乐","url":"http://share.migu.cn/h5/api/migu/h5/getSsoNoLogin?type=1&key=41f4636efd860d393c40ade07b46e24d&channelId=1990064700562"}],"category":[{"title":"","url":""}],"music":[{"album":"在|也不见","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-04-13/16041311251097.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=2000000006005660QZGP&channelid=300000100001","id":"2000000006005660QZGP","name":"在,也不见","singer":"孙燕姿"},{"album":"相信梦想","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-05-03/1605031730594315.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=20000000063897300026&channelid=300000100001","id":"20000000063897300026","name":"相信梦想","singer":"玖月奇迹"},{"album":"分分钟需要你","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-04-15/1604151305595477.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=2000000006005660RP4M&channelid=300000100001","id":"2000000006005660RP4M","name":"分分钟需要你","singer":"林忆莲"},{"album":"《我是杜拉拉》电视原声","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-04-18/160418152434651.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=20000000060084650773&channelid=300000100001","id":"20000000060084650773","name":"忘了去记得(我是杜拉拉插曲)","singer":"戚薇"},{"album":"","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-04-26/1604262329084574.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=2000000006008469Z00Y&channelid=300000100001","id":"2000000006008469Z00Y","name":"雅俗共赏","singer":"许嵩"},{"album":"有心人","coverPic":"http://218.200.230.40:18089/files/resize/album/2016-04-19/1604191448051677.jpg?100x100","dataSourceId":"","detailUrl":"http://fun.migu.cn/t.do?requestid=h5_music_detail&gcid=20000000063273401567&channelid=300000100001","id":"20000000063273401567","name":"有心人","singer":"G.E.M.邓紫棋"}]},"status":"success","errorCode":"000000","desc":"success"}
}
,{
      "id": "video",
      "name": "视频",
      "show": true,
      "caseList": ['“我想看视频”', '“播放视频”'],
      "entry": "./shortvideo/card.js",
      "version": 2,
      "minRom": "4.0.3",
      "caseRedDot": false,
      "content":{"bottomButton":[{"name":"更多视频","url":"http://share.migu.cn/h5/api/migu/h5/getSsoNoLogin?type=1&key=1964eb78aba1822274a5276dd5f6815c&channelId=1990064700562"}],"items":[{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/3013/078/493/TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000616989920&channelid=300000100001","playNum":"","source":"","title":"极盗者","vid":"30000000000616989920"},{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/3011/374/118/TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000615984462&channelid=300000100001","playNum":"","source":"","title":"唐人街探案","vid":"30000000000615984462"},{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/3010/645/813/feiyuelaorenyuan_TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000615254767&channelid=300000100001","playNum":"","source":"","title":"飞越老人院","vid":"30000000000615254767"},{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/3011/445/835/TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000616007664&channelid=300000100001","playNum":"","source":"","title":"老炮儿","vid":"30000000000616007664"},{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/5500/003/812/TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000618246455 &channelid=300000100001","playNum":"","source":"","title":"荒野猎人","vid":"30000000000618246455"},{"dataSourceId":"","duration":"","imageLink":"http://m.cmvideo.cn/publish/poms/image/3013/485/725/TV_CONTENT.jpg","playLink":"http://fun.migu.cn/t.do?requestid=h5_video_detail&gcid=30000000000617379230&channelid=300000100001","playNum":"","source":"","title":"美人鱼","vid":"30000000000617379230"}]}
}
, {
    "id": "comic",
    "name": "动漫",
    "caseList": ['“我想看火影”', '“我想看海贼王”'],
    "show": true,
    "entry": "./comic/card.js",
    "caseRedDot": false,
    "version": 1,
    "content": {
        "comic": [{
        	"id": "40000000000001899763",
            "name": "妖怪名单",
            "author": "糖人家",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160407/CP0481/000001899763/20160407420120150605264326295113592210280_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_animation_detail&gcid=40000000000001899763&channelid=300000100001",
            "dataSourceId": ""
        }, {
        	"id": "40000000000001988254",
            "name": "凤囚凰",
            "author": "尹春林",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160429/CP0001/000001988254/20160429747374711202210fqh210x2802_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_animation_detail&gcid=40000000000001988254&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000000002169885",
            "name": "妖神记",
            "author": "王泰",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160414/CP2240/000002169885/20160414170220160122600759920712964210280_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_animation_detail&gcid=40000000000002169885&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000090000000849",
            "name": "无间狱",
            "author": "邵宏鹏",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160503/9000000124/090000000849/20151113091237cny2ht6d_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_animation_detail&gcid=40000000090000000849&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000000000024931",
            "name": "雏蜂",
            "author": "白猫",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229170/21/20151202/CP0006/000000024931/201512020507201208081915150200_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_animation_detail&gcid=40000000000000024931&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000000001920771",
            "name": "巨神战击队之空间战击队",
            "author": "广州奥飞",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229170/21/20151023/CP2119/000001920771/20151014677820150629856685522653940jszjdzkjzjd210_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_comic_detail&gcid=40000000000001920771&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000000001875949",
            "name": "魔法总动员",
            "author": "比利时Belga Films公司",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160408/CP0224/000001875949/20160408632720150512401840040019497mfzdy_220_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_comic_detail&gcid=40000000000001875949&channelid=300000100001",
            "dataSourceId": ""
        }, {
            "id": "40000000000001599763",
            "name": "驯龙高手2",
            "author": "梦工厂",
            "summary": "",
            "chapterSeq": "",
            "isFinish": "",
            "coverPic": "http://218.207.208.30:8080/share/mdspfile/1046229176/21/sub_opftp_001/20160411/CP0151/000001599763/2016041182812014112975857574100881520141113753875111211326210x280_web150_200.jpg",
            "detailUrl": "http://fun.migu.cn/t.do?requestid=h5_comic_detail&gcid=40000000000001599763&channelid=300000100001",
            "dataSourceId": ""
        }],
        "bottomButton": [{
            "name": "更多动漫",
            "url": "http://share.migu.cn/h5/api/migu/h5/getSsoNoLogin?type=1&key=165765bed91ff9f251df3d8e37d96498&channelId=1990064700562"
        }]
    }
}
 ,{
    "id": "game",
    "name": "游戏",
    "show": true,
    "caseList": ['“我想玩游戏”', '“搜索手机游戏”'],
    "entry": "./game/card.js",
    "caseRedDot": false,
    "version": 2,
    "df": "16010004|16010456",
    "content":{"content":{"banners":[{}],"bottomButton":[{"name":"更多游戏","url":"http://share.migu.cn/h5/api/migu/h5/getSsoNoLogin?type=1&key=c7cc8b91b4c4ed228da370ed0d80d305&channelId=1990064700562"}],"games":[{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160525/794062/006105999000/1453970160151.jpg","id":"10000000006105999000","name":"兽王争霸","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006105999000&channelid=300000100001"},{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160524/772253/006062406000/1461824332538.jpg","id":"10000000006062406000","name":"火柴人联盟","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006062406000&channelid=300000100001"},{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160426/778480/006090533000/1461397867302.jpg","id":"10000000006090533000","name":"全民捕鱼赢话费最新版","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006090533000&channelid=300000100001"},{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160302/799087/006104501000/1452841394475.jpg","id":"10000000006104501000","name":"消灭星星2016（视频版）","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006104501000&channelid=300000100001"},{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160525/741479/006036050000/1421231189399.jpg","id":"10000000006036050000","name":"开心消消乐","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006036050000&channelid=300000100001"},{"autoOpen":"","desc":"","icon":"http://gmu.g188.net/gmimages/hwpics/20160506/799087/006103041000/1453777724928.jpg","id":"10000000006103041000","name":"奔跑吧兄弟3-撕名牌大战（视频版）","packageName":"","type":"","url":"http://zone.migu.cn/t.do?requestid=h5_game_detail&gcid=10000000006103041000&channelid=300000100001"}]},"status":"success","errorCode":"000000","desc":"success"}
}];
var cardOpCode = {
    "card_local": "FT69107",
    "news": "FT69001",
    "weather": "FT69002",
    "bill": "FT69003",
    "music": "FT69004",
    "song": "FT69004",
    "novel": "FT69005",
    "joker": "FT69006",
    "life": "FT69007",
    "game": "FT69008",
    "app": "FT69009",
    "video": "FT69010",
	"web_navigation":"FT69011",
	"comic": "FT69011" ,
	"listenbook": "FT69013"
};

var cpaCode = {
    "game": "LX_100054",
    "speechCase": "LX_100055",
    "cardManage": "LX_100056",
    "video": "LX_100039",
    "comic": "LX_100066",
    "listenbook":"LX_100085"
};

function handleCardListData(){
    var appBaseInfoStr = exec("SystemComponents", "getBaseInfo", []);
    //没有返回结果，默认为链接状态
    if (!appBaseInfoStr) {
        return originCardList;
    }
    try {
        var appBaseInfoJson = getResultMessage(appBaseInfoStr);
        if (!appBaseInfoJson) {
            return originCardList;
        }
        var appDf = appBaseInfoJson.df;
        var versionRes = appBaseInfoJson.clientver;
        var SDK_ROM = 0;
        
        console.log("WebHomePage appDf = " + appDf + " , versionRes = " + versionRes);
        if (!appDf || !versionRes) {
            return originCardList;
        }
        var versionArr = versionRes.split(".");
        var versionArrLenth = versionArr.length - 1;
        var versionStr = versionArr[2];
        var versionCode = 0;
        if (versionStr) {
            versionCode = parseInt(versionStr);
        }
        
        if(resultDevice && resultDevice.release) {
            try{
                SDK_ROM = parseFloat(resultDevice.release);
            }catch(e){
                
            }
        }
        
        var tempCardList = [];
        var tempIndex = 0;
        var originCardListLenth = originCardList.length;
        for (var i = 0; i < originCardListLenth; i++) {
            var card = originCardList[i];
            
            var tempPut = true;
            
            if (card.minversion && versionCode <= card.minversion) {
                tempPut = false;
            }
            if (card.df && card.df.indexOf(appDf) > -1) {
                tempPut = false;
            }
            if(card.minRom) {
                 try{
                    if(SDK_ROM < parseFloat(card.minRom)) {
                        tempPut = false;
                    }
                }catch(e){
                    
                }
            }
            
            if (tempPut) {
                tempCardList[tempIndex] = card;
                tempIndex++;
            }
        }
        return tempCardList;
    } catch (e) {
        console.error(e.message);
    }
    
    return originCardList;
}

function initCardListSortData(initCardList){
    //var cacheSortStr = window.localStorage.getItem("sortCardListCache");
    var cacheSortJson = null;
    try {
        var cacheSortStr = ifly_getString("cardCache", "sortCardListCache");
        if (cacheSortStr) {
            //cacheSortJson = JSON.parse(cacheSortStr);
            cacheSortJson = JSON.parse(cacheSortStr);
        }
    } catch (e) {
        console.error("WebHomePage initCardListSortData get cacheSortDataList exception : " + e.message);
    }
    if (cacheSortJson) {
        var selectedNumber = 0;
        var newCardList = [];
        //按照原有的元素顺序，找到新列表中在就列表中存在的元素
        var selectCardIdMap = {};
        for (var i = 0; i < cacheSortJson.length; i++) {
            var cacheId = cacheSortJson[i].id;
            for (var j = 0; j < initCardList.length; j++) {
                if (initCardList[j] && cacheId == initCardList[j].id) {
                    newCardList[selectedNumber] = initCardList[j];
                    selectedNumber++;
                    selectCardIdMap[initCardList[j].id] = true;
                    break;
                }
            }
        }
        if (selectedNumber < initCardList.length) {
            //把新列表不在旧列表中的元素插到指定位置
            for (var k = 0; k < initCardList.length; k++) {
                if (initCardList[k] && initCardList[k].id && !selectCardIdMap[initCardList[k].id]) {
                    if (newCardList.length > k) {
                        newCardList.splice(k, 0, initCardList[k]);
                    }
                    else {
                        newCardList.push(initCardList[k]);
                    }
                }
            }
        }
        selectCardIdMap = null;
        
        var cacheSortData = [];
        try {
            var newSortList = [];
            for (var c = 0; c < newCardList.length; c++) {
                var cacheItem = {};
                cacheItem.id = newCardList[c].id;
                newSortList.push(cacheItem);
            }
            cacheSortData = newSortList;
            //缓存新的排序数据
            var newSortListDataStr = JSON.stringify(newSortList);
            //window.localStorage.setItem("sortCardListCache", newSortListDataStr);
            ifly_putString("cardCache", "sortCardListCache", newSortListDataStr);
        } catch (e1) {
            console.error("WebHomePage initCardListSortData set new cacheSortDataList exception : " + e1.message);
        }
        return [newCardList, cacheSortData];
    } else {
        var cacheSortData = [];
        
        try {
            var defaultSortList = [];
            for (var c = 0; c < initCardList.length; c++) {
                var cacheItem = {};
                cacheItem.id = initCardList[c].id;
                defaultSortList.push(cacheItem);
            }
            //默认排序列表
            cacheSortData = defaultSortList;
            var defaultSortListDataStr = JSON.stringify(defaultSortList);
            //window.localStorage.setItem("sortCardListCache", defaultSortListDataStr);
            ifly_putString("cardCache", "sortCardListCache", defaultSortListDataStr);
        } catch (e2) {
            console.error("WebHomePage initCardListSortData set default cacheSortDataList exception : " + e2.message);
        }
        return [initCardList, cacheSortData];
    }
}
