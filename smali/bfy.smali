.class public abstract Lbfy;
.super Ljava/lang/Object;


# static fields
.field protected static j:Ljava/lang/String;


# instance fields
.field private a:Lbft;

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:I

.field protected e:Lbhd;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected k:Z

.field protected l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbfy;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILbft;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lbfy;->b:Ljava/lang/String;

    iput-object v1, p0, Lbfy;->e:Lbhd;

    iput-object v1, p0, Lbfy;->g:Ljava/lang/String;

    iput-object v1, p0, Lbfy;->h:Ljava/lang/String;

    iput-object v1, p0, Lbfy;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfy;->k:Z

    iput-object v1, p0, Lbfy;->a:Lbft;

    iput-object p1, p0, Lbfy;->l:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lbfy;->c:J

    iput p2, p0, Lbfy;->d:I

    invoke-static {p1}, Lbfq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->h:Ljava/lang/String;

    invoke-static {p1}, Lbhn;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->i:Ljava/lang/String;

    invoke-static {p1}, Lbfq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    iput-object p3, p0, Lbfy;->a:Lbft;

    invoke-virtual {p3}, Lbft;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lbft;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lbft;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lbft;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {p3}, Lbft;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lbft;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->i:Ljava/lang/String;

    :cond_2
    invoke-virtual {p3}, Lbft;->e()Z

    move-result v0

    iput-boolean v0, p0, Lbfy;->k:Z

    :cond_3
    invoke-static {p1}, Lbfq;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->g:Ljava/lang/String;

    invoke-static {p1}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v0

    iput-object v0, p0, Lbfy;->e:Lbhd;

    invoke-virtual {p0}, Lbfy;->b()Lcom/tencent/wxop/stat/a/f;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/a/f;->i:Lcom/tencent/wxop/stat/a/f;

    if-eq v0, v1, :cond_5

    invoke-static {p1}, Lbhn;->s(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbfy;->f:I

    :goto_0
    sget-object v0, Lbfy;->j:Ljava/lang/String;

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lbfq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfy;->j:Ljava/lang/String;

    invoke-static {v0}, Lbhn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "0"

    sput-object v0, Lbfy;->j:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/tencent/wxop/stat/a/f;->i:Lcom/tencent/wxop/stat/a/f;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a/f;->a()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lbfy;->f:I

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public abstract b()Lcom/tencent/wxop/stat/a/f;
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string/jumbo v1, "ky"

    iget-object v2, p0, Lbfy;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "et"

    invoke-virtual {p0}, Lbfy;->b()Lcom/tencent/wxop/stat/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/a/f;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lbfy;->e:Lbhd;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ui"

    iget-object v2, p0, Lbfy;->e:Lbhd;

    invoke-virtual {v2}, Lbhd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lbfy;->e:Lbhd;

    invoke-virtual {v1}, Lbhd;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mc"

    invoke-static {p1, v2, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbfy;->e:Lbhd;

    invoke-virtual {v1}, Lbhd;->d()I

    move-result v1

    const-string/jumbo v2, "ut"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbfy;->l:Landroid/content/Context;

    invoke-static {v1}, Lbhn;->w(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "ia"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "cui"

    iget-object v2, p0, Lbfy;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbfy;->b()Lcom/tencent/wxop/stat/a/f;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/a/f;->b:Lcom/tencent/wxop/stat/a/f;

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "av"

    iget-object v2, p0, Lbfy;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ch"

    iget-object v2, p0, Lbfy;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lbfy;->k:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "impt"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v1, "mid"

    sget-object v2, Lbfy;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "idx"

    iget v2, p0, Lbfy;->f:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "si"

    iget v2, p0, Lbfy;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lbfy;->c:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "dts"

    iget-object v2, p0, Lbfy;->l:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lbhn;->a(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lbfy;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lbfy;->c:J

    return-wide v0
.end method

.method public d()Lbft;
    .locals 1

    iget-object v0, p0, Lbfy;->a:Lbft;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbfy;->l:Landroid/content/Context;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lbfy;->k:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lbfy;->b(Lorg/json/JSONObject;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method
