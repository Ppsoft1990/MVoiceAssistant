.class public Lcom/iflytek/viafly/browser/BrowserViewComponents;
.super Ljava/lang/Object;
.source "BrowserViewComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserViewComponents"

.field private static final VER:Ljava/lang/String; = "2.0"


# instance fields
.field private mBrowserActivity:Landroid/app/Activity;

.field private mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/browser/BrowserViewComponents;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserViewComponents;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->complexUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private complexUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newToken"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 159
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->getQueryParameterNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 167
    .local v2, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "paramName":Ljava/lang/String;
    const-string/jumbo v6, "t"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    .end local v1    # "paramName":Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 175
    .local v4, "token":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getQueryParameterNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 180
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 181
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string/jumbo v6, "[?]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "arrSplit":[Ljava/lang/String;
    array-length v6, v0

    if-le v6, v9, :cond_0

    aget-object v6, v0, v9

    if-eqz v6, :cond_0

    .line 184
    aget-object v5, v0, v9

    .line 185
    .local v5, "strAllParam":Ljava/lang/String;
    const-string/jumbo v6, "[&]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "params":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v3, v6

    .line 187
    .local v1, "param":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v2, v9, v7

    .line 188
    .local v2, "paramName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v5    # "strAllParam":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private showToast(II)V
    .locals 5
    .param p1, "textId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 321
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 324
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BrowserViewComponents"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 380
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt, text is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 382
    const-string/jumbo v4, ""

    .line 400
    :goto_0
    return-object v4

    .line 385
    :cond_0
    const/16 v4, 0x8

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 388
    .local v3, "secretKey":[B
    const/4 v4, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 389
    const/4 v4, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 390
    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 393
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/security/Base64;->decode([B)[B

    move-result-object v0

    .line 394
    .local v0, "content":[B
    invoke-static {v0, v3}, Ltb;->b([B[B)[B

    move-result-object v2

    .line 395
    .local v2, "result":[B
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt, result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    .end local v0    # "content":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BrowserViewComponents"

    const-string/jumbo v5, "decrypt"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const-string/jumbo v4, ""

    goto :goto_0

    .line 385
    :array_0
    .array-data 1
        0x78t
        0x25t
        0x37t
        0x33t
        0x67t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 349
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encrypt, text is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 351
    const-string/jumbo v4, ""

    .line 369
    :goto_0
    return-object v4

    .line 354
    :cond_0
    const/16 v4, 0x8

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 357
    .local v3, "secretKey":[B
    const/4 v4, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 358
    const/4 v4, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 359
    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 362
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 363
    .local v0, "content":[B
    invoke-static {v0, v3}, Ltb;->a([B[B)[B

    move-result-object v2

    .line 364
    .local v2, "result":[B
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encrypt, result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {v2}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 366
    .end local v0    # "content":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BrowserViewComponents"

    const-string/jumbo v5, "encrypt"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const-string/jumbo v4, ""

    goto :goto_0

    .line 354
    :array_0
    .array-data 1
        0x78t
        0x25t
        0x37t
        0x33t
        0x67t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public finish()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 203
    :cond_0
    return-void
.end method

.method public getConfigInfo()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 409
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 410
    .local v3, "resultJson":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 412
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    :try_start_0
    const-string/jumbo v4, "appid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getMscAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string/jumbo v4, "ver"

    const-string/jumbo v5, "2.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string/jumbo v4, "clientver"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string/jumbo v4, "apn"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string/jumbo v4, "imei"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string/jumbo v4, "imsi"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v4, "token"

    iget-object v5, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 419
    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string/jumbo v4, "uid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string/jumbo v4, "osid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string/jumbo v4, "ua"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string/jumbo v4, "df"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getConfigInfo, result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v2

    .line 425
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BrowserViewComponents"

    const-string/jumbo v5, "getConfigInfo"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisplayInfo()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    .line 81
    .local v3, "width":I
    iget-object v4, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 82
    .local v2, "height":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "displayInfo":Ljava/lang/String;
    const-string/jumbo v4, "BrowserViewComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "display is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "displayInfo":Ljava/lang/String;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BrowserViewComponents"

    const-string/jumbo v5, "getDisplayInfo()"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getJokeId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 240
    const-string/jumbo v0, "BrowserViewComponents"

    const-string/jumbo v1, "getJokeId()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "tokenid":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "tokenid":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "tokenid":Ljava/lang/String;
    const-string/jumbo v1, "BrowserViewComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "joke || tokenid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v0
.end method

.method public isSupportRecognize()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onAuthEvent(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "targetUrl"    # Ljava/lang/String;
    .param p2, "isRedirect"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v5, "BrowserViewComponents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAuthEvent() targetUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 105
    .local v0, "browserActivity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    .line 111
    .local v1, "browserView":Lcom/iflytek/viafly/browser/BrowserView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/browser/BrowserView;->isGoBack()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 117
    invoke-virtual {v1}, Lcom/iflytek/viafly/browser/BrowserView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "url":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    new-instance v4, Ljava/lang/String;

    .end local v4    # "url":Ljava/lang/String;
    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v4, v3}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->complexUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "complexUrl":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/browser/BrowserView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v2    # "complexUrl":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    new-instance v6, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;

    invoke-direct {v6, p0, p2, v1, p1}, Lcom/iflytek/viafly/browser/BrowserViewComponents$1;-><init>(Lcom/iflytek/viafly/browser/BrowserViewComponents;ZLcom/iflytek/viafly/browser/BrowserView;Ljava/lang/String;)V

    sget-object v7, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v8, ""

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p1, "browserActivity"    # Landroid/app/Activity;
    .param p2, "browserView"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method public retry()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->reload()V

    .line 253
    :cond_0
    return-void
.end method

.method public sendSmsBySystem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    const-string/jumbo v0, "BrowserViewComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsBySystem number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lhp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shareToOther(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "isCutImage_boolean"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 296
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    const v2, 0x7f0c0300

    invoke-direct {p0, v2, v5}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->showToast(II)V

    .line 301
    const-string/jumbo v2, "BrowserViewComponents"

    const-string/jumbo v3, "SD card is not mounted -> return null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_2
    const/4 v1, 0x0

    .line 305
    .local v1, "picUrl":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    sget-object v3, Lnk;->a:Ljava/lang/String;

    const-string/jumbo v4, "joke.png"

    invoke-static {v2, v3, v4}, Lcom/iflytek/yd/util/Share;->getScreenShot(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    if-nez v1, :cond_3

    .line 308
    const v2, 0x7f0c0208

    invoke-direct {p0, v2, v5}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->showToast(II)V

    goto :goto_0

    .line 311
    :cond_3
    const v2, 0x7f0c020a

    invoke-direct {p0, v2, v5}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->showToast(II)V

    .line 314
    :cond_4
    const v2, 0x7f0c0206

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/iflytek/yd/util/Share;->shareToOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const v2, 0x7f0c020b

    invoke-direct {p0, v2, v5}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->showToast(II)V

    goto :goto_0
.end method

.method public startRecognize()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 261
    const-string/jumbo v0, "BrowserViewComponents"

    const-string/jumbo v1, "startRecognize"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->startSearchDialog(I)V

    .line 263
    return-void
.end method

.method public startSearchDialog(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 271
    const-string/jumbo v2, "BrowserViewComponents"

    const-string/jumbo v3, "startSearchDialog()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    .line 274
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    if-nez p1, :cond_3

    .line 280
    const-string/jumbo v2, "web_scene"

    const-string/jumbo v3, "music"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    :cond_2
    :goto_1
    const-string/jumbo v2, "SEARCH_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    const-class v2, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 286
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 281
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 282
    const-string/jumbo v2, "web_scene"

    const-string/jumbo v3, "restaurant"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public viaflyShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "isCutImage_boolean"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 211
    const-string/jumbo v0, "BrowserViewComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viaflyShare || shareText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isCutImage_boolean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents;->mBrowserActivity:Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;-><init>(Lcom/iflytek/viafly/browser/BrowserViewComponents;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    :cond_0
    return-void
.end method
