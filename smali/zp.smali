.class Lzp;
.super Ljava/lang/Object;
.source "FeeTransferCacheHelper.java"


# static fields
.field private static a:Lzp;


# instance fields
.field private b:Lzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lzp;

    invoke-direct {v0}, Lzp;-><init>()V

    sput-object v0, Lzp;->a:Lzp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lzo;

    invoke-direct {v0}, Lzo;-><init>()V

    iput-object v0, p0, Lzp;->b:Lzo;

    .line 24
    invoke-virtual {p0}, Lzp;->b()V

    .line 25
    return-void
.end method

.method public static a()Lzp;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lzp;->a:Lzp;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "fee"

    iget-object v4, p0, Lzp;->b:Lzo;

    invoke-virtual {v4}, Lzo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v3, "transfer"

    iget-object v4, p0, Lzp;->b:Lzo;

    invoke-virtual {v4}, Lzo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v3, "imsi"

    iget-object v4, p0, Lzp;->b:Lzo;

    invoke-virtual {v4}, Lzo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lzp;->b:Lzo;

    invoke-virtual {v4}, Lzo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v3, "updateTime"

    iget-object v4, p0, Lzp;->b:Lzo;

    invoke-virtual {v4}, Lzo;->c()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "jsonStr":Ljava/lang/String;
    const-string/jumbo v3, "FeeTransferCacheHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cached json str: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_FEE_TRANSFER_DATA"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "jsonStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FeeTransferCacheHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .param p1, "updateTime"    # J

    .prologue
    .line 113
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, p1, p2}, Lzo;->a(J)V

    .line 114
    invoke-direct {p0}, Lzp;->i()V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 2
    .param p1, "callfees"    # Ljava/lang/String;
    .param p2, "flow"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "updateTime"    # J
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string/jumbo v0, "FeeTransferCacheHelper"

    const-string/jumbo v1, "cache the caf data to sharedpreference."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, p1}, Lzo;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, p2}, Lzo;->b(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lzp;->b:Lzo;

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v1, p6}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzo;->c(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, p4, p5}, Lzo;->a(J)V

    .line 90
    if-eqz p3, :cond_0

    .line 91
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, p3}, Lzo;->d(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lzp;->i()V

    .line 94
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_FEE_TRANSFER_DATA"

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "cache":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 40
    iget-object v3, p0, Lzp;->b:Lzo;

    const-string/jumbo v4, "fee"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzo;->a(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lzp;->b:Lzo;

    const-string/jumbo v4, "transfer"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzo;->b(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lzp;->b:Lzo;

    const-string/jumbo v4, "imsi"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzo;->c(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lzp;->b:Lzo;

    const-string/jumbo v4, "url"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lzo;->d(Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lzp;->b:Lzo;

    const-string/jumbo v4, "updateTime"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lzo;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FeeTransferCacheHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0}, Lzo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0}, Lzo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0}, Lzo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0}, Lzo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0}, Lzo;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_FEE_TRANSFER_DATA"

    invoke-virtual {v0, v1, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, v4}, Lzo;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, v4}, Lzo;->c(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, v4}, Lzo;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lzp;->b:Lzo;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lzo;->a(J)V

    .line 81
    iget-object v0, p0, Lzp;->b:Lzo;

    invoke-virtual {v0, v4}, Lzo;->d(Ljava/lang/String;)V

    .line 82
    return-void
.end method
