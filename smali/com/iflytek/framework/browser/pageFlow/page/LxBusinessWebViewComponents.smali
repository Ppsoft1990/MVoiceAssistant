.class public Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;
.super Ljava/lang/Object;
.source "LxBusinessWebViewComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BusinessViewComponents"

.field private static final VER:Ljava/lang/String; = "2.0"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mWebView:Landroid/webkit/WebView;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private complexUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "newToken"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 215
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
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

    .line 218
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->getQueryParameterNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 223
    .local v2, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 224
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "paramName":Ljava/lang/String;
    const-string/jumbo v6, "t"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
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

    .line 230
    .end local v1    # "paramName":Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 231
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

    .line 232
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

    .line 236
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 237
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 238
    const-string/jumbo v6, "[?]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "arrSplit":[Ljava/lang/String;
    array-length v6, v0

    if-le v6, v9, :cond_0

    aget-object v6, v0, v9

    if-eqz v6, :cond_0

    .line 240
    aget-object v5, v0, v9

    .line 241
    .local v5, "strAllParam":Ljava/lang/String;
    const-string/jumbo v6, "[&]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "params":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v3, v6

    .line 243
    .local v1, "param":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v2, v9, v7

    .line 244
    .local v2, "paramName":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v5    # "strAllParam":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private isChinaMobile()Z
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "isChinaMobile":Z
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    .line 92
    .local v3, "simHelper":Lhy;
    invoke-virtual {v3}, Lhy;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v0

    .line 94
    .local v0, "first":Lcom/iflytek/yd/system/SimType;
    sget-object v4, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v4, v0}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const/4 v1, 0x1

    .line 104
    .end local v0    # "first":Lcom/iflytek/yd/system/SimType;
    :cond_0
    :goto_0
    return v1

    .line 96
    .restart local v0    # "first":Lcom/iflytek/yd/system/SimType;
    :cond_1
    invoke-virtual {v3}, Lhy;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v2

    .line 98
    .local v2, "second":Lcom/iflytek/yd/system/SimType;
    sget-object v4, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v4, v2}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 5
    .param p1, "textId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    .line 377
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 380
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 381
    .restart local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BusinessViewComponents"

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
    .line 436
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 437
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 438
    const-string/jumbo v4, ""

    .line 456
    :goto_0
    return-object v4

    .line 441
    :cond_0
    const/16 v4, 0x8

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 444
    .local v3, "secretKey":[B
    const/4 v4, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 445
    const/4 v4, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 446
    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 449
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/security/Base64;->decode([B)[B

    move-result-object v0

    .line 450
    .local v0, "content":[B
    invoke-static {v0, v3}, Ltb;->b([B[B)[B

    move-result-object v2

    .line 451
    .local v2, "result":[B
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 452
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v0    # "content":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BusinessViewComponents"

    const-string/jumbo v5, "decrypt"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    const-string/jumbo v4, ""

    goto :goto_0

    .line 441
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
    .line 405
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 406
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 407
    const-string/jumbo v4, ""

    .line 425
    :goto_0
    return-object v4

    .line 410
    :cond_0
    const/16 v4, 0x8

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 413
    .local v3, "secretKey":[B
    const/4 v4, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 414
    const/4 v4, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 415
    const/4 v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 418
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 419
    .local v0, "content":[B
    invoke-static {v0, v3}, Ltb;->a([B[B)[B

    move-result-object v2

    .line 420
    .local v2, "result":[B
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 421
    invoke-static {v2}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 422
    .end local v0    # "content":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BusinessViewComponents"

    const-string/jumbo v5, "encrypt"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    const-string/jumbo v4, ""

    goto :goto_0

    .line 410
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
    .line 256
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    :cond_0
    return-void
.end method

.method public getConfigInfo()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 465
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 466
    .local v3, "resultJson":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 468
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    :try_start_0
    const-string/jumbo v4, "appid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getMscAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string/jumbo v4, "ver"

    const-string/jumbo v5, "2.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v4, "clientver"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v4, "apn"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v4, "imei"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string/jumbo v4, "imsi"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v4, "token"

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    .line 475
    invoke-static {v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v5

    .line 474
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v4, "uid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string/jumbo v4, "osid"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v4, "ua"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string/jumbo v4, "df"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 486
    return-object v2

    .line 481
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BusinessViewComponents"

    const-string/jumbo v5, "getConfigInfo"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisplayInfo()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->d(Landroid/content/Context;)I

    move-result v3

    .line 75
    .local v3, "width":I
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    .line 76
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

    .line 77
    .local v0, "displayInfo":Ljava/lang/String;
    const-string/jumbo v4, "BusinessViewComponents"

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

    .line 82
    .end local v0    # "displayInfo":Ljava/lang/String;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BusinessViewComponents"

    const-string/jumbo v5, "getDisplayInfo()"

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getJokeId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 296
    const-string/jumbo v0, "BusinessViewComponents"

    const-string/jumbo v1, "getJokeId()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 394
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
    .line 285
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "tokenid":Ljava/lang/String;
    const-string/jumbo v1, "BusinessViewComponents"

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

    .line 287
    return-object v0
.end method

.method public isSupportRecognize()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onAuthEvent(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;
    .param p2, "isRedirect"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method public retry()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 309
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
    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    const-string/jumbo v0, "BusinessViewComponents"

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

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

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

    .line 351
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    .line 352
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    const v2, 0x7f0c0300

    invoke-direct {p0, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->showToast(II)V

    .line 357
    const-string/jumbo v2, "BusinessViewComponents"

    const-string/jumbo v3, "SD card is not mounted -> return null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_2
    const/4 v1, 0x0

    .line 361
    .local v1, "picUrl":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mWebView:Landroid/webkit/WebView;

    sget-object v3, Lnk;->a:Ljava/lang/String;

    const-string/jumbo v4, "joke.png"

    invoke-static {v2, v3, v4}, Lcom/iflytek/yd/util/Share;->getScreenShot(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    if-nez v1, :cond_3

    .line 364
    const v2, 0x7f0c0208

    invoke-direct {p0, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->showToast(II)V

    goto :goto_0

    .line 367
    :cond_3
    const v2, 0x7f0c020a

    invoke-direct {p0, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->showToast(II)V

    .line 370
    :cond_4
    const v2, 0x7f0c0206

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/iflytek/yd/util/Share;->shareToOther(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const v2, 0x7f0c020b

    invoke-direct {p0, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->showToast(II)V

    goto :goto_0
.end method

.method public showAuthView(Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public showMockDialog()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 510
    const-string/jumbo v0, "BusinessViewComponents"

    const-string/jumbo v1, "mActivity is null"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$2;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$2;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startRecognize()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 317
    const-string/jumbo v0, "BusinessViewComponents"

    const-string/jumbo v1, "startRecognize"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->startSearchDialog(I)V

    .line 319
    return-void
.end method

.method public startSearchDialog(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 327
    const-string/jumbo v2, "BusinessViewComponents"

    const-string/jumbo v3, "startSearchDialog()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    .line 330
    .local v0, "browserActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    if-nez p1, :cond_3

    .line 336
    const-string/jumbo v2, "web_scene"

    const-string/jumbo v3, "music"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :cond_2
    :goto_1
    const-string/jumbo v2, "SEARCH_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-class v2, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 338
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
    .line 267
    const-string/jumbo v0, "BusinessViewComponents"

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

    .line 268
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void
.end method
