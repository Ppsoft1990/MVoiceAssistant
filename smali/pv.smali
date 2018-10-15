.class public final Lpv;
.super Ljava/lang/Object;
.source "SpeechTestHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[B


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lpv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lpv;->b:[B

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lpv;->b:[B

    .line 66
    :cond_0
    invoke-static {p0, p1}, Lpq;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lpv;->b:[B

    .line 67
    return-void
.end method

.method public static a(Landroid/content/Context;Lpw;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "log"    # Lpw;

    .prologue
    .line 52
    const-string/jumbo v1, "SpeechTestHelper"

    const-string/jumbo v2, "notifyResult"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_AUDIO_SPEECHTEST_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "audioResult"

    invoke-virtual {p1}, Lpw;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "audiouri"

    invoke-static {}, Lpv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Landroid/content/Intent;)V

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 39
    sput-object p0, Lpv;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static a(I)[B
    .locals 7
    .param p0, "readLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    sget-object v5, Lpv;->b:[B

    if-eqz v5, :cond_0

    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    if-nez v5, :cond_1

    :cond_0
    move-object v0, v4

    .line 95
    :goto_0
    return-object v0

    .line 74
    :cond_1
    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    if-gt v5, p0, :cond_3

    .line 75
    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    new-array v0, v5, [B

    .line 76
    .local v0, "cache":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 77
    sget-object v5, Lpv;->b:[B

    aget-byte v5, v5, v2

    aput-byte v5, v0, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    :cond_2
    sput-object v4, Lpv;->b:[B

    goto :goto_0

    .line 84
    .end local v0    # "cache":[B
    .end local v2    # "i":I
    :cond_3
    sget-object v5, Lpv;->b:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 85
    .restart local v0    # "cache":[B
    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    sub-int/2addr v5, p0

    new-array v3, v5, [B

    .line 86
    .local v3, "temps":[B
    const/4 v1, 0x0

    .line 87
    .local v1, "from":I
    move v2, p0

    .restart local v2    # "i":I
    :goto_2
    sget-object v5, Lpv;->b:[B

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 88
    sget-object v5, Lpv;->b:[B

    aget-byte v5, v5, v2

    aput-byte v5, v3, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_4
    sput-object v4, Lpv;->b:[B

    .line 93
    sput-object v3, Lpv;->b:[B

    goto :goto_0
.end method
