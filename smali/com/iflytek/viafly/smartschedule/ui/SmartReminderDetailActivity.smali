.class public Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "SmartReminderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private dailyTrafficContaner:Lcom/iflytek/base/skin/customView/XFrameLayout;

.field private extraContainer:Landroid/widget/LinearLayout;

.field private imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

.field private mAddView:Lcom/iflytek/base/skin/customView/XButton;

.field private mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

.field private scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

.field private textViewContent:Lcom/iflytek/base/skin/customView/XTextView;

.field private titleBack:Landroid/view/View;

.field private titleContent:Lcom/iflytek/base/skin/customView/XTextView;

.field private tvExtra:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 38
    const-string/jumbo v0, "SmartReminderDetailActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->onClickTitleBack(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;)Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    return-object v0
.end method

.method private addSmart()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v0, "\u5df2\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->finish()V

    .line 285
    return-void
.end method

.method private confirmDelete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 261
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664\u6b64\u63d0\u9192\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$3;-><init>(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 263
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$2;-><init>(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;)V

    .line 269
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 276
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 277
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 278
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->initFromIntent()V

    .line 108
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->updateView()V

    .line 109
    return-void
.end method

.method private initFromIntent()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "smart_schedule_item"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    iput-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .line 115
    const-string/jumbo v1, "SmartReminderDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initFromIntent | scheduleItem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setTitle()V

    .line 76
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->titleBack:Landroid/view/View;

    .line 77
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->titleContent:Lcom/iflytek/base/skin/customView/XTextView;

    .line 79
    const v0, 0x7f0b067f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->textViewContent:Lcom/iflytek/base/skin/customView/XTextView;

    .line 80
    const v0, 0x7f0b0684

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    .line 81
    const v0, 0x7f0b0680

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 82
    const v0, 0x7f0b0685

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->extraContainer:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0b0686

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->tvExtra:Lcom/iflytek/base/skin/customView/XTextView;

    .line 84
    const v0, 0x7f0b0687

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

    .line 85
    const v0, 0x7f0b0688

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mAddView:Lcom/iflytek/base/skin/customView/XButton;

    .line 87
    const v0, 0x7f0b0681

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XFrameLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->dailyTrafficContaner:Lcom/iflytek/base/skin/customView/XFrameLayout;

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->dailyTrafficContaner:Lcom/iflytek/base/skin/customView/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->bindDailyTrafficContainer(Lcom/iflytek/base/skin/customView/XFrameLayout;)V

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v1, "stateList.setting_checkbox_states_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mAddView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private onClickTitleBack(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->finish()V

    .line 191
    return-void
.end method

.method private setCheckBoxStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "status":Z
    const-string/jumbo v2, "BadWeatherReminder"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    .line 257
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    goto :goto_0

    .line 244
    :cond_2
    const-string/jumbo v2, "HotEventController"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    goto :goto_1

    .line 250
    :cond_3
    const-string/jumbo v2, "TrafficController"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "TrafficDailyController"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 251
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :goto_2
    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 252
    :cond_7
    const-string/jumbo v1, "CoolingController"

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 253
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    goto :goto_1

    .line 254
    :cond_8
    const-string/jumbo v1, "AirPollutionReminder"

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->titleBack:Landroid/view/View;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity$1;-><init>(Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "SmartReminderDetailActivity"

    const-string/jumbo v1, "setTitle()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method private updateView()V
    .locals 9

    .prologue
    const v8, 0x7f020109

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    if-nez v3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->titleContent:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->textViewContent:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "iconpath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->extraContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->tvExtra:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6ce8\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setCheckBoxStatus()V

    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "need_cover"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 143
    .local v2, "needCover":Z
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 144
    if-eqz v2, :cond_9

    .line 145
    const-string/jumbo v3, "BadWeatherReminder"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    const v4, 0x7f020203

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 157
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mAddView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 147
    :cond_4
    const-string/jumbo v3, "HotEventController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    const v4, 0x7f020112

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 149
    :cond_5
    const-string/jumbo v3, "TrafficController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "TrafficDailyController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 150
    :cond_6
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    const v4, 0x7f02010f

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 151
    :cond_7
    const-string/jumbo v3, "CoolingController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 153
    :cond_8
    const-string/jumbo v3, "AirPollutionReminder"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->imageViewDemoIcon:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 161
    :cond_9
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mAddView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 166
    :cond_a
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mDeleteView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->mAddView:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected bindDailyTrafficContainer(Lcom/iflytek/base/skin/customView/XFrameLayout;)V
    .locals 0
    .param p1, "dailyTrafficContaner"    # Lcom/iflytek/base/skin/customView/XFrameLayout;

    .prologue
    .line 104
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onBackPressed()V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0b0680

    if-ne v3, v4, :cond_8

    .line 201
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 205
    .local v0, "coolState":Z
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->checkBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 206
    const-string/jumbo v3, "BadWeatherReminder"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0

    .line 204
    .end local v0    # "coolState":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 208
    .restart local v0    # "coolState":Z
    :cond_3
    const-string/jumbo v3, "HotEventController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0

    .line 214
    :cond_4
    const-string/jumbo v3, "TrafficController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "TrafficDailyController"

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 215
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 216
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_0

    .line 217
    :cond_6
    const-string/jumbo v2, "CoolingController"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto/16 :goto_0

    .line 219
    :cond_7
    const-string/jumbo v2, "AirPollutionReminder"

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "coolState":Z
    :cond_8
    const v2, 0x7f0b0687

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 224
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lawh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "type":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "delete"

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->confirmDelete()V

    goto/16 :goto_0

    .line 227
    .end local v1    # "type":Ljava/lang/String;
    :cond_9
    const v2, 0x7f0b0688

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 229
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->scheduleItem:Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lawh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "type":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "add"

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->addSmart()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030122

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->setListener()V

    .line 70
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ui/SmartReminderDetailActivity;->initData()V

    .line 71
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
