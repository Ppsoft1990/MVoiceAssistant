.class public Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;
.super Lcom/iflytek/viafly/guide/AbsCustomView;
.source "UserGuideCustomScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private c:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private d:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/AbsCustomView;-><init>(Landroid/content/Context;)V

    .line 28
    const-string/jumbo v0, "UserGuideCustomScheduleView"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "M850"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->e:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "M850A"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->f:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030092

    invoke-virtual {v0, v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 49
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const v3, 0x7f0b03d3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 51
    const v3, 0x7f0b03d7

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 52
    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 53
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 55
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 57
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 60
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 61
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    const v3, 0x7f0b03d2

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f0b03d6

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v3, 0x7f0b03da

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string/jumbo v3, "UserGuideCustomScheduleView"

    const-string/jumbo v4, "current model is N3,start close"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.SCHEDULE_UMBRELLA"

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 72
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 73
    const/4 v3, 0x2

    invoke-static {v3, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 74
    invoke-static {v6, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 75
    invoke-static {v5, v5}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 77
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 78
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 81
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 82
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v4, 0x7

    .line 83
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 85
    invoke-static {v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 86
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v9, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 89
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 90
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v4, 0x6

    .line 91
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 92
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 95
    invoke-static {v8}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 96
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v8, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 98
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 99
    const-string/jumbo v3, "UserGuideCustomScheduleView"

    const-string/jumbo v4, "current model is N3,start close end"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    new-instance v3, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;

    invoke-direct {v3, p0, v2}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;-><init>(Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void

    .line 102
    :cond_0
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    .line 103
    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    invoke-static {v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.SCHEDULE_UMBRELLA"

    invoke-virtual {v4, v5, v6}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 112
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {v8}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 181
    const-string/jumbo v1, "UserGuideCustomScheduleView"

    const-string/jumbo v2, "check model N3"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "M850"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "M850A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    const-string/jumbo v1, "UserGuideCustomScheduleView"

    const-string/jumbo v2, "current model is N3"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    .line 187
    :cond_1
    const-string/jumbo v1, "UserGuideCustomScheduleView"

    const-string/jumbo v2, "current model NOT N3"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public a(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    .line 150
    if-eqz p2, :cond_0

    .line 151
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 152
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 155
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(IZ)V

    .line 141
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(IZ)V

    .line 142
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(IZ)V

    .line 144
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c()V

    .line 146
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(IZ)V

    .line 147
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 161
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_MONTH_IS_TOUCH"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 162
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 163
    invoke-static {}, Lmz;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 169
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 171
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 172
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleThreshold(I)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SCHEDULE_UMBRELLA_TAG"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SCHEDULE_UMBRELLA"

    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    const v3, 0x7f0b03d2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 126
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 127
    .local v0, "checked":Z
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->b:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 135
    .end local v0    # "checked":Z
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "checked":Z
    :cond_1
    move v1, v2

    .line 127
    goto :goto_0

    .line 128
    .end local v0    # "checked":Z
    :cond_2
    const v3, 0x7f0b03d6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 130
    .restart local v0    # "checked":Z
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->c:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 131
    .end local v0    # "checked":Z
    :cond_4
    const v3, 0x7f0b03da

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 132
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 133
    .restart local v0    # "checked":Z
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->d:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3
.end method
