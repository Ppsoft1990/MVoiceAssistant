.class public Luw;
.super Ljava/lang/Object;
.source "DownloadTime.java"


# instance fields
.field private a:Lux;

.field private b:Lux;


# direct methods
.method public constructor <init>(Lux;Lux;)V
    .locals 0
    .param p1, "startTime"    # Lux;
    .param p2, "endTime"    # Lux;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Luw;->a:Lux;

    .line 20
    iput-object p2, p0, Luw;->b:Lux;

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;)Luw;
    .locals 8
    .param p0, "downTime"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 24
    invoke-static {p0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v3

    .line 28
    :cond_1
    const-string/jumbo v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "timeArr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 32
    aget-object v4, v2, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v2, v7

    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    aget-object v4, v2, v6

    invoke-static {v4}, Lux;->a(Ljava/lang/String;)Lux;

    move-result-object v1

    .line 38
    .local v1, "startTime":Lux;
    aget-object v4, v2, v7

    invoke-static {v4}, Lux;->a(Ljava/lang/String;)Lux;

    move-result-object v0

    .line 39
    .local v0, "endTime":Lux;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 43
    new-instance v3, Luw;

    invoke-direct {v3, v1, v0}, Luw;-><init>(Lux;Lux;)V

    goto :goto_0
.end method

.method public static a(Luw;)Z
    .locals 1
    .param p0, "time"    # Luw;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Luw;->a()Lux;

    move-result-object v0

    invoke-static {v0}, Lux;->a(Lux;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luw;->b()Lux;

    move-result-object v0

    invoke-static {v0}, Lux;->a(Lux;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "downTime"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Luw;->a(Ljava/lang/String;)Luw;

    move-result-object v0

    .line 48
    .local v0, "time":Luw;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lux;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Luw;->a:Lux;

    return-object v0
.end method

.method public b()Lux;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Luw;->b:Lux;

    return-object v0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 72
    invoke-static {p0}, Luw;->a(Luw;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v6

    .line 76
    :cond_1
    invoke-static {}, Lvb;->a()J

    move-result-wide v0

    .line 77
    .local v0, "currentTime":J
    iget-object v7, p0, Luw;->a:Lux;

    invoke-virtual {v7}, Lux;->a()J

    move-result-wide v4

    .line 78
    .local v4, "start":J
    iget-object v7, p0, Luw;->b:Lux;

    invoke-virtual {v7}, Lux;->a()J

    move-result-wide v2

    .line 80
    .local v2, "end":J
    cmp-long v7, v0, v4

    if-ltz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method
