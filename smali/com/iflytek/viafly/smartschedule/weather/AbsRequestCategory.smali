.class public abstract Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;
.super Ljava/lang/Object;
.source "AbsRequestCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lvx;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mBizRequest:Lvx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

.field private mContext:Landroid/content/Context;

.field protected mListener:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory",
            "<TT;>.WeatherRequest",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public final close(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 61
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onClose()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "close but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final delete(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 73
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onDelete()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "delete but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCacheConfig()Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract handleBackgroundIntent(Landroid/content/Intent;)V
.end method

.method public varargs abstract handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public final init(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .param p2, "config"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .prologue
    .line 36
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mConfig:Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onInit()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "init status not open return"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract onClose()V
.end method

.method public abstract onDelete()V
.end method

.method public abstract onFail(IJI)V
.end method

.method public abstract onGrayChanged(Z)V
.end method

.method public abstract onInit()V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onSuccess(Lcom/iflytek/yd/business/OperationInfo;JI)V
.end method

.method public final open(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 2
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 49
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->onOpen()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "open but rundata status not open"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener()Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory",
            "<TT;>.WeatherRequest",
            "Listener;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;, "Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory<TT;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mListener:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;-><init>(Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$1;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mListener:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory;->mListener:Lcom/iflytek/viafly/smartschedule/weather/AbsRequestCategory$WeatherRequestListener;

    return-object v0
.end method
