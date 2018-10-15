.class Loq;
.super Ljava/lang/Object;
.source "PermissionBizHelper.java"

# interfaces
.implements Lcom/iflytek/yd/http/listener/OnHttpRequestListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lhl;

.field private f:Ljava/lang/String;

.field private g:Lop;

.field private h:Lcom/iflytek/yd/business/AppConfig;

.field private i:Lcom/iflytek/yd/http/interfaces/HttpContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Loq$1;

    invoke-direct {v0, p0}, Loq$1;-><init>(Loq;)V

    iput-object v0, p0, Loq;->i:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 113
    iput-object p1, p0, Loq;->a:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Loq;->e:Lhl;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loq;->d:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loq;->c:Ljava/util/Map;

    .line 117
    const-string/jumbo v0, "http://ydossp.voicecloud.cn/do"

    iput-object v0, p0, Loq;->f:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Loq;->e:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    iput-object v0, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    .line 120
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)J
    .locals 11
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    iget-object v10, p0, Loq;->i:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v8, v9, p2, v7, v10}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v7

    iput-object v7, p0, Loq;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 300
    iget-object v7, p0, Loq;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 301
    .local v2, "id":J
    iget-object v7, p0, Loq;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7, p0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 303
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 305
    .local v4, "mByteData":[B
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 306
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2.0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Loy;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 316
    :goto_0
    iget-object v7, p0, Loq;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "m":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v4, v7}, Loy;->a([B[B)[B

    move-result-object v4

    .line 320
    const-string/jumbo v7, "PermissionBizHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string/jumbo v7, "PermissionBizHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "post data  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v7, p0, Loq;->d:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Loq;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v7, p0, Loq;->b:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v7, v6, v4}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 326
    return-wide v2

    .line 312
    .end local v1    # "m":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PermissionBizHelper"

    const-string/jumbo v8, "startRequest() gZip error!"

    invoke-static {v7, v8, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Loq;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Loq;

    .prologue
    .line 48
    iget-object v0, p0, Loq;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # Lym;
    .param p3, "ap"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v8, 0x0

    .line 236
    .local v8, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v2}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 238
    .local v2, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v9, "request"

    invoke-virtual {v2, v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v7

    .line 240
    .local v7, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "cmd"

    invoke-virtual {v7, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v9, "base"

    invoke-virtual {v7, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v1

    .line 242
    .local v1, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "param"

    invoke-virtual {v7, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 245
    .local v6, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    iget-object v9, p0, Loq;->a:Landroid/content/Context;

    invoke-static {v9}, Low;->a(Landroid/content/Context;)Low;

    move-result-object v9

    const-string/jumbo v10, "PARAM_KEY_APPID"

    invoke-virtual {v9, v10}, Low;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "appid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 248
    iget-object v9, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v9}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    const-string/jumbo v9, "aid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v9, "imsi"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v9, "imei"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v9, "caller"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getCaller()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v9, "osid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v9, "ua"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v9, "version"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v9, "cpu"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v9, "androidid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v10

    invoke-virtual {v10}, Lhy;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v9, "mac"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v9, "cellid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v10

    invoke-virtual {v10}, Lhy;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v9, "uuid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->a:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 263
    if-eqz p4, :cond_1

    const-string/jumbo v9, ""

    invoke-virtual {p4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 264
    :cond_1
    const-string/jumbo v9, "sid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 268
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 269
    :cond_2
    const-string/jumbo v9, "ap"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 274
    :goto_1
    const-string/jumbo v9, "uid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v9, "df"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    iget-object v10, p0, Loq;->h:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v10}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Lym;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 280
    .local v5, "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 281
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lym$a;

    iget-object v9, v9, Lym$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lym$a;

    iget-object v9, v9, Lym$a;->b:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    .end local v4    # "i":I
    .end local v5    # "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    :cond_3
    const-string/jumbo v9, "sid"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-virtual {v9, p4}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "appid":Ljava/lang/String;
    .end local v1    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v6    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 288
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v9

    .line 271
    .restart local v0    # "appid":Ljava/lang/String;
    .restart local v1    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v2    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v6    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v7    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_4
    const-string/jumbo v9, "ap"

    invoke-virtual {v1, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .restart local v4    # "i":I
    .restart local v5    # "lstParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lym$a;>;"
    :cond_5
    invoke-static {v2}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v9, v8

    .line 288
    goto :goto_3
.end method

.method private a(IJI)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "id"    # J
    .param p4, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Loq;->g:Lop;

    if-eqz v0, :cond_0

    .line 206
    packed-switch p4, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Loq;->g:Lop;

    invoke-interface {v0, p1, v1}, Lop;->a(ILjava/util/List;)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Loq;->g:Lop;

    invoke-interface {v0, p1, v1}, Lop;->b(ILjava/util/List;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Loq;->g:Lop;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Loq;->g:Lop;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Loq;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lop;->a(ILjava/util/List;)V

    .line 224
    :cond_0
    return-void
.end method

.method static synthetic b(Loq;)Lhl;
    .locals 1
    .param p0, "x0"    # Loq;

    .prologue
    .line 48
    iget-object v0, p0, Loq;->e:Lhl;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Loq;->g:Lop;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Loq;->g:Lop;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Loq;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lop;->b(ILjava/util/List;)V

    .line 230
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/PermissionApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 332
    const-string/jumbo v14, "PermissionBizHelper"

    const-string/jumbo v15, "filterPermissionApps result is empty"

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v7, 0x0

    .line 391
    :cond_0
    :goto_0
    return-object v7

    .line 337
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v1

    .line 338
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    .line 339
    .local v8, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v8, :cond_8

    .line 340
    const-string/jumbo v14, "status"

    invoke-virtual {v8, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 341
    .local v12, "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 342
    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 343
    .local v11, "status":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "000000"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 344
    :cond_2
    const-string/jumbo v14, "PermissionBizHelper"

    const-string/jumbo v15, "status not success"

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v7, 0x0

    goto :goto_0

    .line 348
    .end local v11    # "status":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "softs"

    invoke-virtual {v8, v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 349
    .local v9, "softElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 350
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "soft"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 351
    .local v10, "softs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 352
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v7, "permissionApps":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/PermissionApp;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_0

    .line 354
    new-instance v6, Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-direct {v6}, Lcom/iflytek/common/permission/data/PermissionApp;-><init>()V

    .line 355
    .local v6, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "id"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 356
    .local v4, "idElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 357
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppId(Ljava/lang/String;)V

    .line 360
    :cond_4
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "appNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v0, :cond_5

    .line 362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 363
    const/4 v14, 0x0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppName(Ljava/lang/String;)V

    .line 366
    :cond_5
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "pkgname"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 367
    .local v5, "packageNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_6

    .line 368
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 369
    const/4 v14, 0x0

    .line 370
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 369
    invoke-virtual {v6, v14}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageName(Ljava/lang/String;)V

    .line 373
    :cond_6
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v15, "version"

    invoke-virtual {v14, v15}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 374
    .local v13, "versionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v13, :cond_7

    .line 375
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 376
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v14}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageVersion(Ljava/lang/String;)V

    .line 378
    :cond_7
    invoke-virtual {v6, v3}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppPriority(I)V

    .line 380
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 387
    .end local v0    # "appNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "i":I
    .end local v4    # "idElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "packageNameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v7    # "permissionApps":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/PermissionApp;>;"
    .end local v8    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v9    # "softElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "softs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v12    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "versionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "PermissionBizHelper"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/util/List;
    .locals 30
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Los;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 397
    const-string/jumbo v27, "PermissionBizHelper"

    const-string/jumbo v28, "filterPermissionConfigs result is empty"

    invoke-static/range {v27 .. v28}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/16 v18, 0x0

    .line 512
    :cond_0
    :goto_0
    return-object v18

    .line 402
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v6

    .line 403
    .local v6, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v24

    .line 404
    .local v24, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v24, :cond_e

    .line 405
    const-string/jumbo v27, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 406
    .local v26, "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v26, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_3

    .line 407
    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 408
    .local v25, "status":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    const-string/jumbo v27, "000000"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 409
    :cond_2
    const-string/jumbo v27, "PermissionBizHelper"

    const-string/jumbo v28, "status not success"

    invoke-static/range {v27 .. v28}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v18, 0x0

    goto :goto_0

    .line 413
    .end local v25    # "status":Ljava/lang/String;
    :cond_3
    const-string/jumbo v27, "softconfigs"

    .line 414
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 415
    .local v4, "configsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_e

    .line 416
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v28, "softconfig"

    .line 417
    invoke-virtual/range {v27 .. v28}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 418
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_e

    .line 419
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v18, "permissionConfigs":Ljava/util/List;, "Ljava/util/List<Los;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 421
    .local v2, "config":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v17, Los;

    invoke-direct/range {v17 .. v17}, Los;-><init>()V

    .line 422
    .local v17, "permissionConfig":Los;
    const-string/jumbo v27, "softid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 423
    .local v11, "idElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_4

    .line 424
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    iput-object v0, v1, Los;->a:Ljava/lang/String;

    .line 427
    :cond_4
    const-string/jumbo v27, "permissions"

    .line 428
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 429
    .local v19, "permissionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v19, :cond_7

    .line 430
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_7

    .line 431
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 432
    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 433
    .local v16, "permission":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 434
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Los;->d:Ljava/lang/String;

    .line 435
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v15, "permHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    const-string/jumbo v27, ";"

    .line 437
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 438
    .local v22, "permissions":[Ljava/lang/String;
    if-eqz v22, :cond_6

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_6

    .line 440
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_6

    .line 441
    aget-object v27, v22, v10

    const-string/jumbo v29, ":"

    .line 442
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 443
    .local v12, "maps":[Ljava/lang/String;
    if-eqz v12, :cond_5

    array-length v0, v12

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-le v0, v1, :cond_5

    .line 444
    const/16 v27, 0x0

    aget-object v27, v12, v27

    const/16 v29, 0x1

    aget-object v29, v12, v29

    invoke-static/range {v29 .. v29}, Loy;->a(Ljava/lang/String;)Lcom/iflytek/common/permission/data/PermissionType;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 448
    .end local v10    # "i":I
    .end local v12    # "maps":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    iput-object v15, v0, Los;->b:Ljava/util/HashMap;

    .line 452
    .end local v15    # "permHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    .end local v16    # "permission":Ljava/lang/String;
    .end local v22    # "permissions":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v27, "guides"

    .line 453
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 454
    .local v9, "guidesElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v9, :cond_d

    .line 455
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_d

    .line 456
    const/16 v27, 0x0

    .line 457
    move/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v29, "guide"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 458
    .local v8, "guideElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_d

    .line 459
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_d

    .line 461
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Lcom/iflytek/common/permission/data/PermissionGuide;

    move-object/from16 v21, v0

    .line 462
    .local v21, "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_c

    .line 463
    new-instance v20, Lcom/iflytek/common/permission/data/PermissionGuide;

    invoke-direct/range {v20 .. v20}, Lcom/iflytek/common/permission/data/PermissionGuide;-><init>()V

    .line 465
    .local v20, "permissionGuide":Lcom/iflytek/common/permission/data/PermissionGuide;
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v29, "name"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 466
    .local v13, "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v13, :cond_8

    .line 467
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 468
    const/16 v27, 0x0

    .line 469
    move/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 468
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuideName(Ljava/lang/String;)V

    .line 472
    :cond_8
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v29, "path"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 473
    .local v14, "pathElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v14, :cond_9

    .line 474
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_9

    .line 475
    const/16 v27, 0x0

    .line 476
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 475
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePath(Ljava/lang/String;)V

    .line 479
    :cond_9
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v29, "prompt"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 480
    .local v23, "promptElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v23, :cond_a

    .line 481
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 482
    const/16 v27, 0x0

    .line 483
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 482
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePrompt(Ljava/lang/String;)V

    .line 486
    :cond_a
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v29, "description"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 488
    .local v5, "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v5, :cond_b

    .line 489
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 490
    const/16 v27, 0x0

    .line 491
    move/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v27 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 490
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuideDescription(Ljava/lang/String;)V

    .line 493
    :cond_b
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePriority(I)V

    .line 495
    aput-object v20, v21, v10

    .line 462
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 498
    .end local v5    # "descElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "nameElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "pathElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v20    # "permissionGuide":Lcom/iflytek/common/permission/data/PermissionGuide;
    .end local v23    # "promptElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Los;->c:[Lcom/iflytek/common/permission/data/PermissionGuide;

    .line 501
    .end local v8    # "guideElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "i":I
    .end local v21    # "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 508
    .end local v2    # "config":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "configsElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v9    # "guidesElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "idElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "permissionConfig":Los;
    .end local v18    # "permissionConfigs":Ljava/util/List;, "Ljava/util/List<Los;>;"
    .end local v19    # "permissionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v24    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v26    # "statusElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :catch_0
    move-exception v7

    .line 509
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "PermissionBizHelper"

    const-string/jumbo v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Lop;)J
    .locals 8
    .param p2, "listener"    # Lop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lop;",
            ")J"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 144
    :cond_0
    const-string/jumbo v5, "PermissionBizHelper"

    const-string/jumbo v6, "requestPermissionConfigs appid list is empty"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-wide/16 v6, -0x1

    .line 159
    :goto_0
    return-wide v6

    .line 147
    :cond_1
    iput-object p2, p0, Loq;->g:Lop;

    .line 148
    new-instance v2, Lym;

    invoke-direct {v2}, Lym;-><init>()V

    .line 149
    .local v2, "params":Lym;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_2

    .line 153
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_3
    const-string/jumbo v5, "softids"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lym;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v5, "permsoftconfig"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct {p0, v5, v2, v6, v7}, Loq;->a(Ljava/lang/String;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "sRequest":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Loq;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "?c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x232d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "baseUrl":Ljava/lang/String;
    const/16 v5, 0x3ea

    invoke-direct {p0, v0, v5, v3}, Loq;->a(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    goto :goto_0
.end method

.method public a(Lop;)J
    .locals 6
    .param p1, "listener"    # Lop;

    .prologue
    .line 128
    iput-object p1, p0, Loq;->g:Lop;

    .line 129
    new-instance v1, Lym;

    invoke-direct {v1}, Lym;-><init>()V

    .line 130
    .local v1, "params":Lym;
    const-string/jumbo v3, "permsofts"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct {p0, v3, v1, v4, v5}, Loq;->a(Ljava/lang/String;Lym;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "sRequest":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Loq;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x232c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "baseUrl":Ljava/lang/String;
    const/16 v3, 0x3e9

    invoke-direct {p0, v0, v3, v2}, Loq;->a(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 3
    .param p1, "errorCde"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 164
    const-string/jumbo v0, "PermissionBizHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v0

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Loq;->a(IJI)V

    .line 166
    return-void
.end method

.method public onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 536
    return-void
.end method

.method public onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 541
    return-void
.end method

.method public onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 170
    const-string/jumbo v4, "PermissionBizHelper"

    const-string/jumbo v5, "onResult"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p2, :cond_0

    .line 172
    iget-object v4, p0, Loq;->d:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    const v4, 0xc3ba7

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    .line 177
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v5

    .line 176
    invoke-direct {p0, v4, v6, v7, v5}, Loq;->a(IJI)V

    .line 202
    :cond_2
    :goto_0
    return-void

    .line 180
    :cond_3
    const/4 v2, 0x0

    .line 181
    .local v2, "realResult":Ljava/lang/String;
    iget-object v4, p0, Loq;->c:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "time":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    const-string/jumbo v4, "PermissionBizHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResult, xor\'s time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "m":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {p1, v4}, Loy;->a([B[B)[B

    move-result-object v4

    invoke-static {v4}, Loy;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 192
    :goto_1
    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/String;

    .end local v2    # "realResult":Ljava/lang/String;
    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 193
    .restart local v2    # "realResult":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, "PermissionBizHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Loq;->c:Ljava/util/Map;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_5

    .line 196
    invoke-direct {p0, v2}, Loq;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 190
    const-string/jumbo v4, "PermissionBizHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 197
    :cond_5
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_2

    .line 198
    invoke-direct {p0, v2}, Loq;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
