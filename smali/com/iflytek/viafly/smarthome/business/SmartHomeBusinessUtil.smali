.class public final Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;
.super Ljava/lang/Object;
.source "SmartHomeBusinessUtil.java"


# static fields
.field private static final CLOSE_WORDS:[Ljava/lang/String;

.field public static final DEMO_1:Ljava/lang/String; = "\u6211\u4e94\u5206\u949f\u540e\u5230\u5bb6"

.field public static final DEMO_2:Ljava/lang/String; = "\u6253\u5f00\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

.field public static final DEMO_3:Ljava/lang/String; = "\u6211\u60f3\u6d17\u4e2a\u6fa1"

.field public static final DEMO_4:Ljava/lang/String; = "\u62c9\u5f00\u7a97\u5e18\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

.field public static final DEMO_ANSWER_1:Ljava/lang/String; = "\u597d\u7684\uff0c\u6309\u7167\u60a8\u7684\u4e60\u60ef\uff0c\u7a7a\u8c03\u5df2\u7ecf\u8c03\u523026\u5ea6\uff0c\u70ed\u6c34\u5668\u8c03\u523050\u5ea6\u3002"

.field public static final DEMO_ANSWER_2:Ljava/lang/String; = "\u597d\u7684\uff0c\u7535\u89c6\u6b63\u5728\u64ad\u653e\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

.field public static final DEMO_ANSWER_3:Ljava/lang/String; = "\u597d\u7684\uff0c\u70ed\u6c34\u5668\u5df2\u7ecf\u5f00\u542f\u3002"

.field public static final DEMO_ANSWER_4:Ljava/lang/String; = "\u597d\u7684\uff0c\u5df2\u7ecf\u4e3a\u60a8\u62c9\u5f00\u7a97\u5e18\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

.field private static final DEVICES:[Ljava/lang/String;

.field private static final OPEN_WORDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartHomeBusinessUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u7a7a\u6c14\u51c0\u5316\u5668"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u51c0\u5316\u5668"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u9664\u6e7f\u673a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u9664\u6e7f\u5668"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u5e72\u71e5\u673a"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u98ce\u6247"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u7535\u98ce\u6247"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->DEVICES:[Ljava/lang/String;

    .line 375
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "\u6253\u5f00"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u5f00\u542f"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5f00\u4e00\u4e0b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u5f00\u5f00"

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->OPEN_WORDS:[Ljava/lang/String;

    .line 376
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95ed"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u5173\u6389"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5173\u4e0a"

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->CLOSE_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    .end local p0    # "device":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 383
    .restart local p0    # "device":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .line 384
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "\u7a7a\u6c14\u51c0\u5316\u5668"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u51c0\u5316\u5668"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    :cond_1
    const-string/jumbo v0, "airpurifier"

    :cond_2
    :goto_1
    move-object p0, v0

    .line 392
    goto :goto_0

    .line 386
    :cond_3
    const-string/jumbo v1, "\u9664\u6e7f\u673a"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "\u5e72\u71e5\u673a"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "\u9664\u6e7f\u5668"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 387
    :cond_4
    const-string/jumbo v0, "airdryer"

    goto :goto_1

    .line 388
    :cond_5
    const-string/jumbo v1, "\u98ce\u6247"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "\u7535\u98ce\u6247"

    invoke-static {v1, p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    :cond_6
    const-string/jumbo v0, "electricfan"

    goto :goto_1
.end method

.method public static getFastResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v10, "name"

    const-string/jumbo v11, "nlu"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v3, "matchJsonObject":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v7, "typeObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "gparser_path"

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v10, "value"

    const-string/jumbo v11, "---------"

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v10, "match_info"

    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    const-string/jumbo v10, "result"

    invoke-virtual {v5, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v10, "score"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    new-instance v8, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v8}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 158
    .local v8, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v10, "nlp"

    invoke-virtual {v8, v10}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 159
    .local v0, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v10, "version"

    invoke-virtual {v0, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "1.0.0.8000"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v10, "rawtext"

    invoke-virtual {v0, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "\u8df3\u8fc7\u7247\u5934"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v10, "parsedtext"

    invoke-virtual {v0, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "\u8df3\u8fc7\u7247\u5934"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v10, "result"

    invoke-virtual {v0, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 164
    .local v6, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v10, "focus"

    invoke-virtual {v6, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "cmd"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v10, "object"

    invoke-virtual {v6, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 166
    .local v4, "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v10, "keycode"

    invoke-virtual {v4, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "KON00106"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v10, "minute"

    invoke-virtual {v4, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v10, "traceinfo"

    invoke-virtual {v6, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 170
    invoke-static {v8}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 175
    .end local v0    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "matchJsonObject":Lorg/json/JSONObject;
    .end local v4    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "typeObject":Lorg/json/JSONObject;
    .end local v8    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :goto_0
    return-object v9

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static getMovieResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    .line 104
    return-object p0
.end method

.method public static getTransferResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v7, 0x1

    .line 180
    if-nez p1, :cond_1

    .line 181
    const/4 p1, 0x0

    .line 239
    .end local p1    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    :goto_0
    return-object p1

    .line 183
    .restart local p1    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    move-object v3, p1

    .line 185
    .local v3, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 189
    const-string/jumbo v4, "video"

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "news"

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 191
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getDeviceInfo()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 194
    .local v2, "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMART_TV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v0

    .line 196
    .local v0, "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getCtrlType()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    const-string/jumbo v4, "SmartHomeBusinessUtil"

    const-string/jumbo v5, "smarthome devices and tv plugin not empty, transfer video to smarthome"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->transferVideoResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    .end local v0    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v1    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_4
    :goto_1
    move-object p1, v3

    .line 239
    goto :goto_0

    .line 202
    .restart local v0    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .restart local v1    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_5
    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v5, "news"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    const-string/jumbo v5, "\u6628\u5929\u7684\u65b0\u95fb\u8054\u64ad"

    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    const-string/jumbo v4, "SmartHomeBusinessUtil"

    const-string/jumbo v5, "smarthome devices and tv plugin not empty, transfer news to smarthome"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->transferNewResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    goto :goto_1

    .line 213
    .end local v0    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v1    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_6
    const-string/jumbo v4, "music"

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 214
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getDeviceInfo()Ljava/util/List;

    move-result-object v1

    .line 215
    .restart local v1    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 217
    .restart local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 218
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v0

    .line 219
    .restart local v0    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getCtrlType()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 221
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 222
    invoke-static {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->transferMusicResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    goto :goto_2

    .line 227
    .end local v0    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v1    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v2    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_8
    const-string/jumbo v4, "dialog"

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "other"

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    :cond_9
    invoke-static {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->tranferMideaResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static getVarietyResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "rawText"    # Ljava/lang/String;

    .prologue
    .line 60
    return-object p0
.end method

.method private static hasOperation(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "words"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 407
    :cond_1
    :goto_0
    return v0

    .line 400
    :cond_2
    const/4 v0, 0x0

    .line 401
    .local v0, "found":Z
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 402
    .local v1, "word":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 403
    const/4 v0, 0x1

    .line 404
    goto :goto_0

    .line 401
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static judgeCoffee(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string/jumbo v0, "\u5496\u5561"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static judgeForward(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "\u8df3\u8fc7\u7247\u5934"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static judgeGoHome(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string/jumbo v0, "\u5230\u5bb6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u56de\u5bb6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static judgeMovieSpeech(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string/jumbo v0, "\u6c64\u552f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5434\u79c0\u6ce2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u7535\u5f71"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static judgeVarietySpeech(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string/jumbo v0, "\u975e\u8bda\u52ff\u6270"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u4e0a\u5468"

    .line 334
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u4e0a\u4e2a\u661f\u671f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u4e0a\u4e2a\u793c\u62dc"

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tranferDemoResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 12
    .param p0, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 243
    if-nez p0, :cond_0

    .line 244
    const-string/jumbo v1, "SmartHomeBusinessUtil"

    const-string/jumbo v2, "tranferDemoResult asrResult is null"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-object v5

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "content":Ljava/lang/String;
    const/4 v0, 0x0

    .line 251
    .local v0, "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u6211\u4e94\u5206\u949f\u540e\u5230\u5bb6"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u6253\u5f00\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

    .line 252
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u6211\u60f3\u6d17\u4e2a\u6fa1"

    .line 253
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u62c9\u5f00\u7a97\u5e18\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

    .line 254
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_1
    new-instance v11, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v11}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 256
    .local v11, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v1, "biz_result"

    invoke-virtual {v11, v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    .line 257
    .local v8, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "rawtext"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v1, "status"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v3, "success"

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "error_code"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v3, "000000"

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "result"

    invoke-virtual {v8, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 262
    .local v10, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "focus"

    invoke-virtual {v10, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v3, "smarthome"

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "action"

    invoke-virtual {v10, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    .line 264
    .local v7, "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v1, "operation"

    invoke-virtual {v7, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    const-string/jumbo v3, "demo_operate"

    invoke-virtual {v1, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v1, "object"

    invoke-virtual {v10, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    .line 266
    invoke-static {v11}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "xmlDocStr":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v0    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "smarthome"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "xmlDocStr":Ljava/lang/String;
    .end local v7    # "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v10    # "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v0    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_2
    move-object v5, v0

    .line 272
    goto/16 :goto_0
.end method

.method private static tranferMideaResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 411
    const-string/jumbo v2, "SmartHomeBusinessUtil"

    const-string/jumbo v3, "tranferMideaResult"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 472
    :cond_1
    :goto_0
    return-object v1

    .line 416
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v12

    .line 417
    .local v12, "content":Ljava/lang/String;
    const-string/jumbo v2, "SmartHomeBusinessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tranferMideaResult | content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {v12}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getDeviceInfo()Ljava/util/List;

    move-result-object v14

    .line 423
    .local v14, "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-static {v14}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    const-string/jumbo v2, "SmartHomeBusinessUtil"

    const-string/jumbo v3, "tranferMideaResult | deviceItems is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x0

    goto :goto_0

    .line 428
    :cond_4
    const/4 v1, 0x0

    .line 429
    .local v1, "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    sget-object v3, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->DEVICES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v13, v3, v2

    .line 430
    .local v13, "device":Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 429
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    :cond_6
    invoke-static {v13}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->getDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 436
    .local v15, "deviceType":Ljava/lang/String;
    sget-object v5, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->OPEN_WORDS:[Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->hasOperation(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    .line 437
    .local v10, "bOpen":Z
    sget-object v5, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->CLOSE_WORDS:[Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->hasOperation(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    .line 438
    .local v9, "bClose":Z
    const-string/jumbo v5, "SmartHomeBusinessUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "tranferMideaResult | device = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, ", bOpen = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, ", bClose = "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-nez v10, :cond_7

    if-eqz v9, :cond_5

    .line 440
    :cond_7
    new-instance v19, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct/range {v19 .. v19}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 442
    .local v19, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v2, "biz_result"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v11

    .line 443
    .local v11, "biz_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "rawtext"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 444
    const-string/jumbo v2, "status"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v2, "error_code"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "000000"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v2, "result"

    invoke-virtual {v11, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v17

    .line 448
    .local v17, "result_root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "smarthome"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v2, "action"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    .line 450
    .local v8, "actionNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v18, ""

    .line 451
    .local v18, "tip":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 452
    const-string/jumbo v2, "operation"

    invoke-virtual {v8, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "openequipment"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u7ecf\u6253\u5f00\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 458
    :cond_8
    :goto_2
    const-string/jumbo v2, "tip"

    invoke-virtual {v8, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v2, "speech"

    invoke-virtual {v8, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v2, "object"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v16

    .line 462
    .local v16, "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 463
    invoke-static/range {v19 .. v19}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, "xmlDocStr":Ljava/lang/String;
    const-string/jumbo v2, "SmartHomeBusinessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tranferMideaResult | xmlDocStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .end local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "smarthome"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .restart local v1    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto/16 :goto_0

    .line 454
    .end local v7    # "xmlDocStr":Ljava/lang/String;
    .end local v16    # "objNode":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_9
    if-eqz v9, :cond_8

    .line 455
    const-string/jumbo v2, "operation"

    invoke-virtual {v8, v2}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "closeequipment"

    invoke-virtual {v2, v3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u7ecf\u5173\u95ed\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2
.end method

.method public static transferMusicResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    const-string/jumbo v1, "SmartHomeBusinessUtil"

    const-string/jumbo v2, "transferVideoResult oldResult is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    const/4 v0, 0x0

    .line 308
    .local v0, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v1, "music"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string/jumbo v1, "music_to_smarthome"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static transferNewResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    const-string/jumbo v1, "SmartHomeBusinessUtil"

    const-string/jumbo v2, "transferNewResult oldResult is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-string/jumbo v1, "news_to_smarthome"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 329
    .local v0, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    goto :goto_0
.end method

.method public static transferVideoResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 283
    if-nez p1, :cond_1

    .line 284
    const-string/jumbo v1, "SmartHomeBusinessUtil"

    const-string/jumbo v2, "transferVideoResult oldResult is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v1, "video"

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string/jumbo v1, "video_to_smarthome"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    goto :goto_0
.end method
