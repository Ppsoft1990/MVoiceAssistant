.class final Lawh$3;
.super Ljava/lang/Object;
.source "ScheduleUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawh;->c(Ljava/util/List;)Ljava/util/List;
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
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 4
    .param p1, "object1"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "object2"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 526
    const/4 v0, -0x1

    .line 530
    :goto_0
    return v0

    .line 527
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 528
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 521
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    check-cast p2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p0, p1, p2}, Lawh$3;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    return v0
.end method
