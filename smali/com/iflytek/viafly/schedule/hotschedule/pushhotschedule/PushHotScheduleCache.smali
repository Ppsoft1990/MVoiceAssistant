.class public Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;
.super Ljava/lang/Object;
.source "PushHotScheduleCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ea7ac1fc63ad219L


# instance fields
.field private mPushSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->mPushSchedules:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getHotSchedules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->mPushSchedules:Ljava/util/List;

    return-object v0
.end method

.method public getReceiveTime()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->mReceiveTime:J

    return-wide v0
.end method

.method public setHotSchedules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "pushSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushSchedule;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->mPushSchedules:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setReceiveTime(J)V
    .locals 1
    .param p1, "mReceiveTime"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/hotschedule/pushhotschedule/PushHotScheduleCache;->mReceiveTime:J

    .line 37
    return-void
.end method
