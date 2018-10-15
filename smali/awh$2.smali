.class final Lawh$2;
.super Ljava/lang/Object;
.source "ScheduleUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawh;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 8
    .param p1, "object1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "object2"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 471
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 472
    .local v4, "srcTimeDistance":J
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 473
    .local v2, "destTimeDistance":J
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 474
    const/4 v6, 0x1

    .line 506
    :goto_0
    return v6

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 476
    const/4 v6, -0x1

    goto :goto_0

    .line 480
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 481
    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 482
    const/4 v6, -0x1

    goto :goto_0

    .line 483
    :cond_2
    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    .line 484
    const/4 v6, 0x1

    goto :goto_0

    .line 486
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 489
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_5

    .line 490
    const/4 v6, 0x1

    goto :goto_0

    .line 493
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_6

    .line 494
    const/4 v6, -0x1

    goto :goto_0

    .line 497
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_9

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_9

    .line 498
    cmp-long v6, v4, v2

    if-gez v6, :cond_7

    .line 499
    const/4 v6, 0x1

    goto :goto_0

    .line 500
    :cond_7
    cmp-long v6, v4, v2

    if-lez v6, :cond_8

    .line 501
    const/4 v6, -0x1

    goto :goto_0

    .line 503
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 506
    :cond_9
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 465
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    check-cast p2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p0, p1, p2}, Lawh$2;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    return v0
.end method
