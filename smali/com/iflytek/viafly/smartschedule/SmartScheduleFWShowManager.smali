.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
.super Ljava/lang/Object;
.source "SmartScheduleFWShowManager.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;


# static fields
.field private static mInstance:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastShowLogTime:J

.field private mBigViewSHow:Z

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "SmartScheduleFWShowManager"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mBigViewSHow:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->lastShowLogTime:J

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    .line 44
    invoke-static {p0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->hideSmallFloatView()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mBigViewSHow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getSmartEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createWmLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 242
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 243
    .local v0, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 244
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 245
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 248
    const v1, 0x1030003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 250
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 251
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lhl;->e(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 255
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-class v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mInstance:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mInstance:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mInstance:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSmartEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "smartname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    const-string/jumbo v1, "BadWeatherReminder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_bad_weather_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    const-string/jumbo v1, "CoolingController"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_cooling_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    const-string/jumbo v1, "AirPollutionReminder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_air_pollution_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_4
    const-string/jumbo v1, "HolidayController"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_holiday_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_5
    const-string/jumbo v1, "TrafficController"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_6
    const-string/jumbo v1, "TrafficDailyController"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_traffic_daily_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_7
    const-string/jumbo v1, "HotEventController"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->smart_float_window_hot_event_click:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideSmallFloatView()V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addData(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 10
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "addData() data type is empty or id is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 66
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 67
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 70
    .local v3, "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 77
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    .end local v3    # "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->showSmallFloatView()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->lastShowLogTime:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v4, v0, v6

    if-gtz v4, :cond_5

    iget-wide v6, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->lastShowLogTime:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    .line 82
    :cond_5
    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->lastShowLogTime:J

    .line 83
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lxm;->a(Ljava/lang/String;)V

    .line 85
    :cond_6
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "currentTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dismissBigView()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 169
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mBigViewSHow:Z

    .line 170
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->showSmallFloatView()V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLatestData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    monitor-exit v1

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    monitor-exit v1

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessRestart()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 260
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onProcessRestart | smart float can restart"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v1

    .line 266
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onProcessRestart | smart float there is float data"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDataById(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDataById() : dataType or dateId is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 111
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 112
    .local v2, "originSize":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 116
    .local v3, "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 124
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    .end local v2    # "originSize":I
    .end local v3    # "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v4, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 120
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    .restart local v2    # "originSize":I
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->showSmallFloatView()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public removeDataByType(Ljava/lang/String;)V
    .locals 7
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDataByType() : dataType is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 139
    .local v2, "originSize":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .line 142
    .local v3, "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 150
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    .end local v2    # "originSize":I
    .end local v3    # "temp":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v4, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 146
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;>;"
    .restart local v2    # "originSize":I
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->showSmallFloatView()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public showSmallFloatView()V
    .locals 5

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getLatestData()Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    move-result-object v0

    .line 179
    .local v0, "data":Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->hideSmallFloatView()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-boolean v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mBigViewSHow:Z

    if-nez v2, :cond_0

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    if-nez v2, :cond_2

    .line 194
    new-instance v2, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->createWmLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;-><init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    .line 196
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    new-instance v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager$1;-><init>(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->setImages(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    .line 231
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->mSmallView:Lcom/iflytek/viafly/smartschedule/SmartSmallFloatView;

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->createWmLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->addShowTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
