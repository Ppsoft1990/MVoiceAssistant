.class final Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager$1;
.super Ljava/lang/Object;
.source "ScheduleRingtoneManager.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 50
    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 45
    return-void
.end method

.method public onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "oldSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "newSchedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 40
    :cond_0
    return-void
.end method
