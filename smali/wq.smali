.class public final Lwq;
.super Ljava/lang/Object;
.source "BlcOpLog.java"

# interfaces
.implements Lcom/iflytek/yd/business/IOperationLog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lwg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lwq;->a:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lwq;->a:Landroid/content/Context;

    invoke-static {v0}, Lwg;->a(Landroid/content/Context;)Lwg;

    move-result-object v0

    iput-object v0, p0, Lwq;->b:Lwg;

    .line 32
    return-void
.end method


# virtual methods
.method public appendCpaLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "cpaCode"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_0
    const-string/jumbo v1, "BlcOpLog"

    const-string/jumbo v2, "appendCpaLog | cpaCode is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lwq;->a:Landroid/content/Context;

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lwz;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BlcOpLog"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "result"    # Ljava/lang/String;
    .param p5, "customParams"    # Ljava/util/Map;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 42
    :cond_0
    :try_start_0
    const-string/jumbo v0, "BlcOpLog"

    const-string/jumbo v1, "appendOpLog | operation code or result is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 45
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 48
    :cond_2
    if-nez p5, :cond_3

    .line 49
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .end local p5    # "customParams":Ljava/util/Map;
    .local v6, "customParams":Ljava/util/Map;
    move-object p5, v6

    .line 53
    .end local v6    # "customParams":Ljava/util/Map;
    .restart local p5    # "customParams":Ljava/util/Map;
    :cond_3
    const-string/jumbo v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Lwq;->b:Lwg;

    invoke-virtual {v0, p1, p5}, Lwg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    :cond_4
    iget-object v0, p0, Lwq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "token":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 60
    const-string/jumbo v0, "token_id"

    invoke-interface {p5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_5
    iget-object v0, p0, Lwq;->a:Landroid/content/Context;

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v8    # "token":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 64
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BlcOpLog"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
