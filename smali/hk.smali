.class public Lhk;
.super Ljava/lang/Object;
.source "BaseEnvironment.java"


# instance fields
.field private a:Landroid/content/res/Configuration;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lorg/apache/http/HttpHost;

.field private f:Lorg/apache/http/auth/UsernamePasswordCredentials;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:F

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lhk;->a:Landroid/content/res/Configuration;

    .line 56
    iput-object v1, p0, Lhk;->d:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lhk;->e:Lorg/apache/http/HttpHost;

    .line 59
    iput-object v1, p0, Lhk;->f:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhk;->k:Z

    .line 85
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Lcom/iflytek/yd/system/SimInfoManager;

    .prologue
    const/4 v7, 0x0

    .line 153
    new-instance v1, Lcom/iflytek/yd/system/ApnManager;

    invoke-direct {v1, p1, p2}, Lcom/iflytek/yd/system/ApnManager;-><init>(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    .line 154
    .local v1, "apnMgr":Lcom/iflytek/yd/system/ApnManager;
    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnManager;->getDefaultAPN()Lcom/iflytek/yd/system/APNEntity;

    move-result-object v0

    .line 156
    .local v0, "apnEntiry":Lcom/iflytek/yd/system/APNEntity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 159
    .local v3, "prop":Ljava/util/Properties;
    const-string/jumbo v4, "proxySet"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v4, "http.proxyHost"

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v4, "http.proxyPort"

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v4, "BaseEnvironment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set proxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lhk;->e:Lorg/apache/http/HttpHost;

    .line 172
    .end local v3    # "prop":Ljava/util/Properties;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "authentication":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lhk;->d:Ljava/lang/String;

    .line 176
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/yd/system/APNEntity;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lhk;->f:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 181
    .end local v2    # "authentication":Ljava/lang/String;
    :goto_1
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lhk;->i()V

    goto :goto_0

    .line 178
    :cond_1
    iput-object v7, p0, Lhk;->d:Ljava/lang/String;

    .line 179
    iput-object v7, p0, Lhk;->f:Lorg/apache/http/auth/UsernamePasswordCredentials;

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelFile"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string/jumbo v5, "0"

    iput-object v5, p0, Lhk;->j:Ljava/lang/String;

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    :goto_0
    return-void

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "files":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-gtz v5, :cond_2

    .line 308
    :cond_1
    const-string/jumbo v5, "BaseEnvironment"

    const-string/jumbo v6, "get migu channel id fail, files length error "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v2    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BaseEnvironment"

    const-string/jumbo v6, "readChannelConfig file error "

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "files":[Ljava/lang/String;
    :cond_2
    :try_start_1
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 313
    .local v1, "file":Ljava/lang/String;
    const-string/jumbo v7, "BaseEnvironment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readChannelConfig file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "cid_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 316
    const-string/jumbo v7, "cid_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "miguChannel":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 319
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 320
    .local v3, "length":I
    const/4 v7, 0x5

    if-gt v7, v3, :cond_4

    const/16 v7, 0x8

    if-gt v3, v7, :cond_4

    .line 321
    iput-object v4, p0, Lhk;->j:Ljava/lang/String;

    .line 328
    .end local v1    # "file":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "miguChannel":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "BaseEnvironment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get migu channel id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lhk;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 312
    .restart local v1    # "file":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 336
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 337
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 339
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 340
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :goto_0
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 349
    .local v2, "eventType":I
    const/4 v4, 0x0

    .line 350
    .local v4, "tag":I
    :goto_1
    if-eq v2, v8, :cond_4

    .line 351
    if-ne v2, v9, :cond_2

    .line 352
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 354
    const/4 v4, 0x1

    .line 373
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    goto :goto_1

    .line 341
    .end local v2    # "eventType":I
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    .restart local v4    # "tag":I
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    const/4 v4, 0x2

    goto :goto_2

    .line 361
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    .line 362
    const/4 v4, 0x0

    goto :goto_2

    .line 363
    :cond_3
    const/4 v7, 0x4

    if-ne v2, v7, :cond_0

    .line 364
    if-ne v4, v8, :cond_6

    .line 365
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lhk;->h:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 375
    .end local v2    # "eventType":I
    .end local v4    # "tag":I
    :catch_2
    move-exception v0

    .line 376
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 382
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 384
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 389
    :cond_5
    :goto_4
    return-void

    .line 366
    .restart local v2    # "eventType":I
    .restart local v4    # "tag":I
    :cond_6
    if-ne v4, v9, :cond_0

    .line 367
    :try_start_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lhk;->i:Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 377
    .end local v2    # "eventType":I
    .end local v4    # "tag":I
    :catch_3
    move-exception v0

    .line 378
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 385
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 185
    .local v0, "prop":Ljava/util/Properties;
    const-string/jumbo v1, "proxySet"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "http.proxyHost"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "http.proxyPort"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iput-object v2, p0, Lhk;->d:Ljava/lang/String;

    .line 192
    iput-object v2, p0, Lhk;->e:Lorg/apache/http/HttpHost;

    .line 193
    iput-object v2, p0, Lhk;->f:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 194
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lhk;->o:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelFile"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lhk;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1, p2}, Lhk;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lhk;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Lcom/iflytek/yd/system/SimInfoManager;

    .prologue
    .line 141
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "conMgr":Lcom/iflytek/yd/system/ConnectionManager;
    iput-object p1, p0, Lhk;->q:Landroid/content/Context;

    .line 143
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    iput-boolean v2, p0, Lhk;->n:Z

    .line 144
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v1

    .line 145
    .local v1, "networkType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    invoke-direct {p0}, Lhk;->i()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2}, Lhk;->b(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    const-string/jumbo v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 89
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 91
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 92
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lhk;->m:I

    .line 95
    iget-object v4, p0, Lhk;->a:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lhk;->b:I

    if-lez v4, :cond_0

    iget v4, p0, Lhk;->c:I

    if-gtz v4, :cond_1

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lhk;->b:I

    .line 97
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lhk;->c:I

    .line 100
    :cond_1
    iget-boolean v4, p0, Lhk;->k:Z

    if-nez v4, :cond_2

    .line 101
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lhk;->l:F

    .line 102
    iput-boolean v7, p0, Lhk;->k:Z

    .line 105
    :cond_2
    iget v4, p0, Lhk;->c:I

    iget v5, p0, Lhk;->b:I

    if-le v4, v5, :cond_4

    .line 106
    iput-boolean v6, p0, Lhk;->g:Z

    .line 113
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p0, Lhk;->p:I

    .line 114
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lhk;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-object v4, p0, Lhk;->a:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 120
    return-void

    .line 108
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_4
    iput-boolean v7, p0, Lhk;->g:Z

    goto :goto_0

    .line 115
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "1.1.0"

    iput-object v4, p0, Lhk;->o:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lhk;->p:I

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelFile"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lhk;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0, p1, p2}, Lhk;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lhk;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v1, p0, Lhk;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "conMgr":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v1

    iput-boolean v1, p0, Lhk;->n:Z

    .line 137
    iget-boolean v1, p0, Lhk;->n:Z

    return v1
.end method

.method public d()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lhk;->e:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public e()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lhk;->f:Lorg/apache/http/auth/UsernamePasswordCredentials;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lhk;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lhk;->g:Z

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lhk;->c:I

    .line 232
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lhk;->b:I

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lhk;->g:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lhk;->b:I

    .line 240
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lhk;->c:I

    goto :goto_0
.end method
