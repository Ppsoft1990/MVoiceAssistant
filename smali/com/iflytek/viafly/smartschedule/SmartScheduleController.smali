.class public abstract Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
.super Ljava/lang/Object;
.source "SmartScheduleController.java"


# static fields
.field public static final ERROR_NOTOKEN:I = 0x2729d


# instance fields
.field public context:Landroid/content/Context;

.field public manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

.field public runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

.field public scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract delete()V
.end method

.method public getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method public abstract handleBackgroundIntent(Landroid/content/Intent;)V
.end method

.method public abstract handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 0
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 79
    return-void
.end method

.method public abstract handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract handleGrayControlChanged(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public varargs abstract handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public abstract init()V
.end method

.method public abstract isForbiddenGray()Z
.end method

.method public isOpenStatus()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract open()V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->context:Landroid/content/Context;

    .line 137
    return-void
.end method

.method public setRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 0
    .param p1, "runDataItem"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->runDataItem:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 115
    return-void
.end method

.method public setScheduleConfig(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V
    .locals 0
    .param p1, "scheduleConfig"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->scheduleConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 128
    return-void
.end method

.method public setShowManager(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V
    .locals 0
    .param p1, "showManager"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->manager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .line 146
    return-void
.end method
