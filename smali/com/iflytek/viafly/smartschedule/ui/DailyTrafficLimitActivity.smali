.class public Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;
.super Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;
.source "DailyTrafficLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DailyTrafficLimitActivity"


# instance fields
.field private clearTraffic:Lcom/iflytek/base/skin/customView/XImageView;

.field private inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

.field private isInput:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isInput:Z

    .line 35
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$1;-><init>(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;-><init>(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->clearTraffic:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XEditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isInput:Z

    return p1
.end method

.method private getTrafficThreshold()I
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleThreshold()I

    move-result v0

    .line 137
    .local v0, "threshold":I
    if-gtz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleLocalThreshold()I

    move-result v0

    .line 139
    if-gtz v0, :cond_0

    .line 140
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 143
    :cond_0
    const-string/jumbo v1, "DailyTrafficLimitActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTrafficThreshold threshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0
.end method

.method public static isJumpToDailyTrafficActivity(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)Z
    .locals 2
    .param p0, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    const-string/jumbo v0, "TrafficDailyController"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .param p2, "showDelete"    # Z

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "scheduleIntent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "smart_schedule_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "smart_schedule_show_delete"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleItem"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .param p2, "showDelete"    # Z

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "smart_schedule_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "smart_schedule_show_delete"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v1, 0x2328

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected bindDailyTrafficContainer(Lcom/iflytek/base/skin/customView/XFrameLayout;)V
    .locals 4
    .param p1, "dailyTrafficContaner"    # Lcom/iflytek/base/skin/customView/XFrameLayout;

    .prologue
    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->clearTraffic:Lcom/iflytek/base/skin/customView/XImageView;

    .line 70
    const v1, 0x7f0b00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->getTrafficThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->clearTraffic:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    const-string/jumbo v2, "0123456789"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->clearTraffic:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 89
    invoke-super {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->onDestroy()V

    .line 90
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isInput:Z

    if-eqz v3, :cond_0

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, "tmp":I
    if-lez v2, :cond_0

    .line 95
    const-string/jumbo v3, "DailyTrafficLimitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get edittext value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "tmp":I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->isInput:Z

    .line 104
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DailyTrafficLimitActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get edittext value error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->onPause()V

    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->inputTraffic:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 84
    return-void
.end method
