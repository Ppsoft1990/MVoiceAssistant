.class final Lawh$1;
.super Ljava/lang/Object;
.source "ScheduleUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawh;->a(Ljava/util/List;)Ljava/util/List;
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
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 8
    .param p1, "object1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "object2"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 421
    .local v4, "srcTimeDistance":J
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 425
    .local v2, "destTimeDistance":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 426
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 427
    const/4 v6, -0x1

    .line 450
    :goto_0
    return v6

    .line 428
    :cond_0
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 429
    const/4 v6, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 434
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 435
    const/4 v6, 0x1

    goto :goto_0

    .line 438
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 439
    const/4 v6, -0x1

    goto :goto_0

    .line 442
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    .line 443
    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    .line 444
    const/4 v6, 0x1

    goto :goto_0

    .line 445
    :cond_5
    cmp-long v6, v4, v2

    if-lez v6, :cond_6

    .line 446
    const/4 v6, -0x1

    goto :goto_0

    .line 448
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 450
    :cond_7
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 414
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    check-cast p2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p0, p1, p2}, Lawh$1;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    return v0
.end method
