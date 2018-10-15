.class public Lalr;
.super Laht;
.source "HomeOpCodesHelper.java"


# instance fields
.field private a:J

.field private c:Lals;

.field private d:Lalt;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 2
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lalr;->a:J

    .line 37
    new-instance v0, Lalr$1;

    invoke-direct {v0, p0}, Lalr$1;-><init>(Lalr;)V

    iput-object v0, p0, Lalr;->d:Lalt;

    .line 23
    new-instance v0, Lals;

    iget-object v1, p0, Lalr;->d:Lalt;

    invoke-direct {v0, v1}, Lals;-><init>(Lalt;)V

    iput-object v0, p0, Lalr;->c:Lals;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Laly;

    invoke-direct {v0}, Laly;-><init>()V

    .line 57
    .local v0, "mResultHandler":Laly;
    invoke-virtual {v0, p1}, Laly;->c(Ljava/lang/String;)Lalu;

    move-result-object v2

    .line 58
    .local v2, "opCodesData":Lalu;
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Lalu;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v2}, Lalu;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lama;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "newOpCodes":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    invoke-virtual {v4, v5, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_GET_OPCODES_LIMIT_TIME"

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lalu;->c()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 74
    invoke-virtual {v4, v5, v6, v7}, Lil;->a(Ljava/lang/String;J)V

    .line 77
    .end local v1    # "newOpCodes":Ljava/lang/String;
    :cond_1
    return-void

    .line 64
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "settingOpCodes":Ljava/lang/String;
    invoke-virtual {v2}, Lalu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lama;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "newOpCodes":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    const-string/jumbo v4, "HomeOpCodesHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set IFLY_GET_OPCODES_LIMIT_TIME = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_OPCODES_AND_LIMIT_TIME"

    invoke-virtual {v4, v5, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_GET_OPCODES_LIMIT_TIME"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 31
    iget-object v0, p0, Lalr;->c:Lals;

    invoke-virtual {v0}, Lals;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lalr;->a:J

    .line 34
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lalr;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalr;->c:Lals;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lalr;->c:Lals;

    iget-wide v2, p0, Lalr;->a:J

    invoke-virtual {v0, v2, v3}, Lals;->a(J)V

    .line 85
    :cond_0
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method
