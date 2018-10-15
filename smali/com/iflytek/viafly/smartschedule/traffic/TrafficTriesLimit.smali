.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficTriesLimit;
.super Ljava/lang/Object;
.source "TrafficTriesLimit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficTriesLimit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasToken(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSatisfyCondition(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 22
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficTriesLimit;->hasToken(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 24
    :cond_0
    const-string/jumbo v4, "TrafficTriesLimit"

    const-string/jumbo v6, "\u7f51\u7edc\u4e0d\u901a\u7545,\u6216\u8005\u6ca1\u6709\u9274\u6743\u3002\u4e0d\u8bf7\u6c42\u7f51\u7edc"

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 54
    :goto_0
    return v4

    .line 27
    :cond_1
    const-string/jumbo v6, "TrafficTriesLimit"

    const-string/jumbo v7, "\u8c03\u7528\u6d41\u91cf\u67e5\u8be2\u63a5\u53e3\u68c0\u67e5"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getLastTrafficSuccessTime()J

    move-result-wide v2

    .line 30
    .local v2, "lastSuccessTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 31
    const-string/jumbo v5, "TrafficTriesLimit"

    const-string/jumbo v6, "\u672a\u8bf7\u6c42\u8fc7\u63a5\u53e3\uff0c\u76f4\u63a5\u8bf7\u6c42"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lbaa;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 36
    const-string/jumbo v5, "TrafficTriesLimit"

    const-string/jumbo v6, "\u8ddd\u79bb\u4e0a\u6b21\u8bf7\u6c42\u4e0d\u5728\u540c\u4e00\u4e2a\u6708\uff0c\u76f4\u63a5\u8bf7\u6c42"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->clearCurrentTrafficInterfaceCount()V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getCurrentTrafficInterfaceCount()I

    move-result v0

    .line 43
    .local v0, "adjustCount":I
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInterfaceMaxCount()I

    move-result v1

    .line 44
    .local v1, "maxCount":I
    const-string/jumbo v6, "TrafficTriesLimit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "adjustCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v6, "TrafficTriesLimit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maxCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-ge v0, v1, :cond_4

    .line 48
    const-string/jumbo v5, "TrafficTriesLimit"

    const-string/jumbo v6, "\u6b21\u6570\u672a\u8d85\u8fc7\u6700\u5927\u6b21\u6570\uff0c\u76f4\u63a5\u8bf7\u6c42"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 52
    :cond_4
    const-string/jumbo v4, "TrafficTriesLimit"

    const-string/jumbo v6, "\u6b21\u6570\u8d85\u8fc7\u6700\u5927\u6b21\u6570\uff0c\u4e0d\u8bf7\u6c42"

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 54
    goto/16 :goto_0
.end method
