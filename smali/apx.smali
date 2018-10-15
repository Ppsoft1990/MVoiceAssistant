.class public Lapx;
.super Ljava/lang/Object;
.source "WoMusicOperation.java"

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

.field private f:Ljava/util/Timer;

.field private g:Lcom/iflytek/yd/http/interfaces/HttpContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapy;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cfg"    # Lapy;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Lapx$2;

    invoke-direct {v0, p0}, Lapx$2;-><init>(Lapx;)V

    iput-object v0, p0, Lapx;->g:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 51
    iput-object p2, p0, Lapx;->d:Lapy;

    .line 52
    iput-object p1, p0, Lapx;->e:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lapx;->b:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)J
    .locals 12
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    iget-object v11, p0, Lapx;->g:Lcom/iflytek/yd/http/interfaces/HttpContext;

    invoke-static {v8, v9, p1, v10, v11}, Lcom/iflytek/yd/http/factory/HttpRequestFactory;->newSimpleRequestInstance(JIZLcom/iflytek/yd/http/interfaces/HttpContext;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    move-result-object v8

    iput-object v8, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .line 111
    iget-object v8, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    .line 112
    .local v2, "id":J
    iget-object v8, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8, p0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->setOnHttpRequestListener(Lcom/iflytek/yd/http/listener/OnHttpRequestListener;)V

    .line 113
    iget-object v8, p0, Lapx;->b:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    iput-object v8, p0, Lapx;->f:Ljava/util/Timer;

    .line 117
    iget-object v8, p0, Lapx;->f:Ljava/util/Timer;

    new-instance v9, Lapx$1;

    invoke-direct {v9, p0, v2, v3}, Lapx$1;-><init>(Lapx;J)V

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 132
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "time":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lapx;->d:Lapy;

    invoke-interface {v9}, Lapy;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "WoMusicOperation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startRequest url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v8, 0x0

    new-array v5, v8, [B

    .line 141
    .local v5, "key_data":[B
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 145
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v5}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v0

    .line 146
    .local v0, "des_data":[B
    iget-object v8, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v8, v7, v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->post(Ljava/lang/String;[B)V

    .line 147
    return-wide v2

    .line 142
    .end local v0    # "des_data":[B
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "baseAddons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 162
    .local v6, "sRequst":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlDoc;

    invoke-direct {v1}, Lcom/iflytek/yd/util/xml/XmlDoc;-><init>()V

    .line 164
    .local v1, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v8, "request"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlDoc;->addRoot(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 165
    .local v5, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "base"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v0

    .line 166
    .local v0, "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "param"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 169
    .local v4, "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "appid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    .line 170
    invoke-interface {v9}, Lapy;->p()Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v8, "downfrom"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    .line 172
    invoke-interface {v9}, Lapy;->g()Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v8, "imsi"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    invoke-interface {v9}, Lapy;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v8, "osid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    const-string/jumbo v9, "Android"

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v8, "ua"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    invoke-interface {v9}, Lapy;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v8, "apn"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    invoke-interface {v9}, Lapy;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v8, "protocolver"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    .line 178
    invoke-interface {v9}, Lapy;->h()Ljava/lang/String;

    move-result-object v9

    .line 177
    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v8, "uid"

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    iget-object v9, p0, Lapx;->d:Lapy;

    invoke-interface {v9}, Lapy;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 183
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 184
    .local v7, "t_key":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 185
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 184
    invoke-virtual {v10, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v7    # "t_key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "WoMusicOperation"

    const-string/jumbo v9, "packRequest"

    invoke-static {v8, v9, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 189
    .restart local v0    # "baseNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v1    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .restart local v4    # "paramNode":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v5    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_0
    if-eqz p1, :cond_1

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 191
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 192
    .restart local v7    # "t_key":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "t_key":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/iflytek/yd/util/xml/XmlPacker;->pack(Lcom/iflytek/yd/util/xml/XmlDoc;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method static synthetic a(Lapx;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lapx;

    .prologue
    .line 38
    iget-object v0, p0, Lapx;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lapx;)Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;
    .locals 1
    .param p0, "x0"    # Lapx;

    .prologue
    .line 38
    iget-object v0, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    return-object v0
.end method

.method static synthetic c(Lapx;)Laqa;
    .locals 1
    .param p0, "x0"    # Lapx;

    .prologue
    .line 38
    iget-object v0, p0, Lapx;->c:Laqa;

    return-object v0
.end method

.method static synthetic d(Lapx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lapx;

    .prologue
    .line 38
    iget-object v0, p0, Lapx;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lapx;)Lapy;
    .locals 1
    .param p0, "x0"    # Lapx;

    .prologue
    .line 38
    iget-object v0, p0, Lapx;->d:Lapy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 6
    .param p1, "musicId"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v3, "WoMusicOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMusicInfo id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, "requestType":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "songid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lapx;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "sRequest":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lapx;->d:Lapy;

    invoke-interface {v4}, Lapy;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "songdetail.aspx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lapx;->a(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public a()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lapx;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v1}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lapx;->a:Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    invoke-interface {v0}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->cancel()V

    .line 93
    iget-object v0, p0, Lapx;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lapx;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Laqa;)V
    .locals 0
    .param p1, "listener"    # Laqa;

    .prologue
    .line 84
    iput-object p1, p0, Lapx;->c:Laqa;

    .line 86
    return-void
.end method

.method public onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 255
    iget-object v0, p0, Lapx;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lapx;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 258
    :cond_0
    iget-object v0, p0, Lapx;->b:Ljava/util/HashMap;

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v0, "WoMusicOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lapx;->c:Laqa;

    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lapx;->c:Laqa;

    const v2, 0xc3565

    const/4 v3, 0x0

    .line 262
    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    invoke-interface {p3}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 261
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    .line 264
    :cond_1
    return-void
.end method

.method public onRequestEnd(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 269
    return-void
.end method

.method public onResponseStart(Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 274
    return-void
.end method

.method public onResult([BLcom/iflytek/yd/http/interfaces/HttpSimpleRequest;)V
    .locals 9
    .param p1, "result"    # [B
    .param p2, "request"    # Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;

    .prologue
    .line 222
    iget-object v1, p0, Lapx;->f:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lapx;->f:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 225
    :cond_0
    iget-object v1, p0, Lapx;->b:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "base_res":Lapo;
    if-eqz p1, :cond_3

    .line 228
    const/4 v7, 0x0

    .line 230
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

    .line 234
    .end local v8    # "str_res":Ljava/lang/String;
    .restart local v7    # "str_res":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "WoMusicOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " xml="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v1

    invoke-static {v1, v7}, Lapw;->a(ILjava/lang/String;)Lapo;

    move-result-object v3

    .line 242
    .end local v7    # "str_res":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lapx;->c:Laqa;

    if-eqz v1, :cond_2

    .line 243
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lapo;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    :cond_1
    iget-object v1, p0, Lapx;->c:Laqa;

    const v2, 0xc3565

    const/4 v3, 0x0

    .line 245
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    .end local v3    # "base_res":Lapo;
    move-result-wide v4

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 244
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    .line 251
    :cond_2
    :goto_2
    return-void

    .line 231
    .restart local v3    # "base_res":Lapo;
    .restart local v7    # "str_res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "str_res":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "WoMusicOperation"

    const-string/jumbo v2, " onResult RESULT_IS_NULL "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_4
    iget-object v1, p0, Lapx;->c:Laqa;

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getId()J

    move-result-wide v4

    .line 248
    invoke-interface {p2}, Lcom/iflytek/yd/http/interfaces/HttpSimpleRequest;->getType()I

    move-result v6

    .line 247
    invoke-interface/range {v1 .. v6}, Laqa;->a(ILapo;JI)V

    goto :goto_2
.end method
