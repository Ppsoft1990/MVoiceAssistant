.class public Lapu;
.super Ljava/lang/Object;
.source "CmMusicOperation.java"

# interfaces
.implements Lapz;
.implements Lcom/iflytek/yd/http/listener/OnHttpRequestListener;


# instance fields
.field private a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

.field private b:Ljava/util/HashMap;
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

.field private c:Laqa;

.field private d:Lapy;

.field private e:Landroid/content/Context;

.field private f:Lcom/iflytek/yd/http/interfaces/HttpContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapy;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cfg"    # Lapy;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lapu$1;

    invoke-direct {v0, p0}, Lapu$1;-><init>(Lapu;)V

    iput-object v0, p0, Lapu;->f:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 45
    iput-object p2, p0, Lapu;->d:Lapy;

    .line 46
    iput-object p1, p0, Lapu;->e:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapu;->b:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 14
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "cmd"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    iget-object v13, p0, Lapu;->f:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v10, v11, p1, v12, v13}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v10

    iput-object v10, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 83
    iget-object v10, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v10}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 84
    .local v4, "id":J
    iget-object v10, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v10, p0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 86
    iget-object v10, p0, Lapu;->b:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "time":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "?cmd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lapu;->d:Lapy;

    invoke-interface {v11}, Lapy;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v10, "WoMusic_CmMusicOperation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startRequest url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\nkey="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v10, 0x0

    new-array v7, v10, [B

    .line 96
    .local v7, "key_data":[B
    :try_start_0
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 100
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v7}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v2

    .line 101
    .local v2, "des_data":[B
    iget-object v10, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v10, v9, v2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 102
    return-wide v4

    .line 97
    .end local v2    # "des_data":[B
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lapu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lapu;

    .prologue
    .line 35
    iget-object v0, p0, Lapu;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 114
    .local v6, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 116
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "req"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 117
    .local v5, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "base"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 118
    .local v0, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "param"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 121
    .local v4, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "appid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v8, "imsi"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v8, "imei"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v8, "clientver"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v8, "apn"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v8, "token"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapu;->d:Lapy;

    invoke-interface {v9}, Lapy;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 130
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 131
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 132
    .local v7, "t_key":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "t_key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 135
    .restart local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v5    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    invoke-static {v1}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v8, v6

    .line 139
    goto :goto_1
.end method

.method static synthetic b(Lapu;)Lapy;
    .locals 1
    .param p0, "x0"    # Lapu;

    .prologue
    .line 35
    iget-object v0, p0, Lapu;->d:Lapy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 6
    .param p1, "musicId"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v3, "WoMusic_CmMusicOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMusicInfo id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x2

    .line 53
    .local v1, "requestType":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "contentid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0, v0}, Lapu;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "sRequest":Ljava/lang/String;
    iget-object v3, p0, Lapu;->d:Lapy;

    invoke-interface {v3}, Lapy;->n()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MusicInfo"

    invoke-direct {p0, v1, v2, v3, v4}, Lapu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public a()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lapu;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lapu;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 69
    :cond_0
    return-void
.end method

.method public a(Laqa;)V
    .locals 0
    .param p1, "listener"    # Laqa;

    .prologue
    .line 61
    iput-object p1, p0, Lapu;->c:Laqa;

    .line 62
    return-void
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 197
    iget-object v0, p0, Lapu;->b:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v0, "WoMusic_CmMusicOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lapu;->c:Laqa;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lapu;->c:Laqa;

    const/4 v3, 0x0

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 201
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    move v2, p1

    .line 200
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    .line 203
    :cond_0
    return-void
.end method

.method public onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 208
    return-void
.end method

.method public onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 213
    return-void
.end method

.method public onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 9
    .param p1, "result"    # [B
    .param p2, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 162
    iget-object v1, p0, Lapu;->b:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 164
    :cond_0
    const-string/jumbo v1, "WoMusic_CmMusicOperation"

    const-string/jumbo v2, " onResult RESULT_IS_NULL "

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lapu;->c:Laqa;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lapu;->c:Laqa;

    const v2, 0xc3ba7

    const/4 v3, 0x0

    .line 167
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 166
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    const/4 v7, 0x0

    .line 172
    .local v7, "str_res":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v8, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "str_res":Ljava/lang/String;
    .local v8, "str_res":Ljava/lang/String;
    move-object v7, v8

    .line 176
    .end local v8    # "str_res":Ljava/lang/String;
    .restart local v7    # "str_res":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "WoMusic_CmMusicOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " onResult : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v1

    .line 178
    invoke-static {v1, v7}, Lapw;->a(ILjava/lang/String;)Lapo;

    move-result-object v3

    .line 180
    .local v3, "base_res":Lapo;
    iget-object v1, p0, Lapu;->c:Laqa;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lapu;->c:Laqa;

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 182
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 181
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    goto :goto_0

    .line 173
    .end local v3    # "base_res":Lapo;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
