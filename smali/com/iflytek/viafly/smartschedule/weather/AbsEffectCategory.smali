.class public abstract Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
.super Ljava/lang/Object;
.source "AbsEffectCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

.field private mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

.field private mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

    invoke-direct {v0, p0, p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;-><init>(Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mHandler:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

    .line 38
    return-void
.end method


# virtual methods
.method public final close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onClose()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "close but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 90
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onDelete()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    return-object v0
.end method

.method public getShowManager()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract handleBackgroundIntent(Landroid/content/Intent;)V
.end method

.method public final handleEffectUI(Lcom/iflytek/viafly/smartschedule/EffectEvent;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "event"    # Lcom/iflytek/viafly/smartschedule/EffectEvent;
    .param p2, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$1;->$SwitchMap$com$iflytek$viafly$smartschedule$EffectEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/EffectEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onBottomBtnClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract handleMessageImpl(Landroid/os/Message;)V
.end method

.method public varargs abstract handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public final init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p2, "config"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .param p3, "manager"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 47
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 48
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onInit()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "init status not open return"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract onBottomBtnClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract onClose()V
.end method

.method public abstract onCloseClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract onContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract onDelete()V
.end method

.method public abstract onEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
.end method

.method public abstract onGrayChanged(Z)V
.end method

.method public abstract onInit()V
.end method

.method public abstract onOpen()V
.end method

.method public final open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mRunData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->onOpen()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "open but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mHandler:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mHandler:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 144
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 145
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 146
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->mHandler:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
