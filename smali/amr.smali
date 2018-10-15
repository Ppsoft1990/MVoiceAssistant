.class public Lamr;
.super Lvx;
.source "BookBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/contentservice/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    .end local p2    # "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamr;->setNeedGZip(Z)V

    .line 41
    return-void

    .line 39
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private a([B)Ljava/lang/String;
    .locals 5
    .param p1, "bts"    # [B

    .prologue
    .line 184
    const-string/jumbo v0, ""

    .line 185
    .local v0, "des":Ljava/lang/String;
    const/4 v2, 0x0

    .line 186
    .local v2, "tmp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 187
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "strSrc"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p1}, Lcom/iflytek/yd/util/security/MD5Helper;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .line 171
    .local v3, "strDes":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 173
    .local v0, "bt":[B
    :try_start_0
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 174
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lamr;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 180
    :goto_0
    return-object v4

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BookBizHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string/jumbo v3, "BookBizHelper"

    const-string/jumbo v4, "sendTipVoiceRequest() "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 242
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 243
    const-string/jumbo v3, "desckeylist"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const-string/jumbo v3, "1024"

    const/16 v4, 0x80

    const-string/jumbo v5, "3.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-wide v4

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "BookBizHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)J
    .locals 5
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 48
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, "sendContentInfoGetRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "contentid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v2, "chaptercount"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v2, "longtoken"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v2, "userid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v2, "identityid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v2, "msisdn"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v2, "accountname"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const-string/jumbo v2, "1002"

    const/16 v3, 0x6c

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)J
    .locals 5
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "size"    # I

    .prologue
    .line 70
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, "sendChapterListGetRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "paramElement":Lorg/json/JSONObject;
    if-gtz p2, :cond_0

    .line 74
    const/4 p2, 0x1

    .line 78
    :cond_0
    :try_start_0
    const-string/jumbo v2, "contentid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v2, "pageindex"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v2, "pagesize"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v2, "longtoken"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v2, "userid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "identityid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "msisdn"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "accountname"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const-string/jumbo v2, "1003"

    const/16 v3, 0x6a

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterid"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, "sendChapterInfoGetRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "contentid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "chapterid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "longtoken"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v2, "userid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v2, "identityid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v2, "msisdn"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v2, "accountname"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v3

    invoke-virtual {v3}, Lanv;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const-string/jumbo v2, "1004"

    const/16 v3, 0x6b

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "BookBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 7
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .param p4, "rate"    # Ljava/lang/String;
    .param p5, "startTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .param p7, "isOnline"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 203
    const-string/jumbo v3, "BookBizHelper"

    const-string/jumbo v6, "reportBookTimeRequest() "

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lhl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "miguChannel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    .end local v1    # "miguChannel":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 213
    .restart local v1    # "miguChannel":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "longtoken"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v6

    invoke-virtual {v6}, Lanv;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v3, "userid"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v6

    invoke-virtual {v6}, Lanv;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v3, "contentid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v3, "chapterid"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v3, "listenduration"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v3, "streamrate"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v3, "startlistentime"

    invoke-virtual {v2, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v3, "endlistentime"

    invoke-virtual {v2, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v3, "listenonline"

    invoke-virtual {v2, v3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v3, "miguchannel"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v3, "msisdn"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v6

    invoke-virtual {v6}, Lanv;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v3, "accountname"

    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v6

    invoke-virtual {v6}, Lanv;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const-string/jumbo v3, "1012"

    const/16 v4, 0x76

    const-string/jumbo v5, "3.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 226
    .end local v1    # "miguChannel":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "BookBizHelper"

    const-string/jumbo v6, ""

    invoke-static {v3, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 21
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "chapterId"    # Ljava/lang/String;
    .param p4, "payType"    # Ljava/lang/String;
    .param p5, "chargeMode"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v17, "BookBizHelper"

    const-string/jumbo v18, "sendChapterListGetRequest() "

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v10, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    const/16 v18, 0x2710

    invoke-virtual/range {v17 .. v18}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 124
    .local v9, "next":I
    const-string/jumbo v17, "%04d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "randomCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, "timestamp":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->c()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "longToken":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->d()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, "userId":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->e()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "identity":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->g()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "accountName":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->f()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "msisdn":Ljava/lang/String;
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lanv;->k()Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "stoken":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "longtoken="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&userid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&productid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&contentid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&chapterid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&paytype="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&chargemode="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&continuoustoken="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&random="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&timestamp="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&identityid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&msisdn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&accountname="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "signature":Ljava/lang/String;
    const-string/jumbo v17, "BookBizHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "signature"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v17, "contentid"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v17, "productid"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v17, "chapterid"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v17, "chargemode"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v17, "paytype"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v17, "random"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v17, "timestamp"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v17, "longtoken"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v17, "userid"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v17, "accountname"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v17, "identityid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v17, "msisdn"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 153
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&stoken="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 154
    const-string/jumbo v17, "stoken"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lamr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "result":Ljava/lang/String;
    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v17, "BookBizHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "result"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v4    # "accountName":Ljava/lang/String;
    .end local v6    # "identity":Ljava/lang/String;
    .end local v7    # "longToken":Ljava/lang/String;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "next":I
    .end local v11    # "randomCode":Ljava/lang/String;
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v14    # "stoken":Ljava/lang/String;
    .end local v15    # "timestamp":Ljava/lang/String;
    .end local v16    # "userId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v17, "1007"

    const/16 v18, 0x75

    const-string/jumbo v19, "3.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v10, v3}, Lamr;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v18

    return-wide v18

    .line 159
    :catch_0
    move-exception v5

    .line 160
    .local v5, "e":Lorg/json/JSONException;
    const-string/jumbo v17, "BookBizHelper"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
