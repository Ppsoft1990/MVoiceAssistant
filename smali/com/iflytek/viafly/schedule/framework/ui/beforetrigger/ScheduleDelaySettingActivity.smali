.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleDelaySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;


# instance fields
.field a:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field b:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field c:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "ScheduleDelaySettingActivity"

    const-string/jumbo v2, "setActivtiyResult"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "ScheduleDelaySettingActivity"

    const-string/jumbo v1, "setTitle()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 50
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const v1, 0x7f0200d6

    .line 51
    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundResource(I)V

    .line 52
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;Z)V
    .locals 5
    .param p1, "item"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
    .param p2, "isChecked"    # Z

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "i":I
    const/4 v1, 0x0

    .line 151
    .local v1, "isFound":Z
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 153
    const/4 v1, 0x1

    .line 157
    :cond_0
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 158
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    .line 159
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 160
    if-eq v0, v2, :cond_1

    .line 161
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->b()V

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_3
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 132
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->b()V

    .line 137
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onBackPressed()V

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->b()V

    .line 122
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->finish()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0237
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 58
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 59
    const-string/jumbo v5, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 62
    :cond_0
    const v5, 0x7f0300e7

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a()V

    .line 65
    const v5, 0x7f0b057c

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 66
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v5, v9}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 67
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v5, v9}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 68
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAutoDelayFlag()I

    move-result v5

    if-lez v5, :cond_1

    move v0, v8

    .line 70
    .local v0, "flag":Z
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v5, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 72
    const v5, 0x7f0b057b

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 73
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->b:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v10, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;

    invoke-direct {v10, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;)V

    invoke-virtual {v5, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v5, 0x7f0b057d

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 88
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-gt v1, v11, :cond_3

    .line 89
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;

    mul-int/lit8 v5, v1, 0x5

    invoke-direct {v4, p0, v5, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;-><init>(Landroid/content/Context;ILcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;)V

    .line 90
    .local v4, "scheduleDelayTimeItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v5, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 91
    if-ne v1, v11, :cond_2

    .line 92
    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->setLongLine(Z)V

    .line 96
    :goto_2
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "flag":Z
    .end local v1    # "i":I
    .end local v4    # "scheduleDelayTimeItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
    :cond_1
    move v0, v9

    .line 69
    goto :goto_0

    .line 94
    .restart local v0    # "flag":Z
    .restart local v1    # "i":I
    .restart local v4    # "scheduleDelayTimeItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
    :cond_2
    invoke-virtual {v4, v9}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->setLongLine(Z)V

    goto :goto_2

    .line 99
    .end local v4    # "scheduleDelayTimeItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
    :cond_3
    const v5, 0x7f0b0237

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v5

    int-to-long v6, v5

    .line 102
    .local v6, "time":J
    const/4 v2, -0x1

    .line 103
    .local v2, "index":I
    const-wide/16 v8, 0x5

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 104
    const/4 v2, 0x0

    .line 110
    :cond_4
    :goto_3
    if-gez v2, :cond_5

    .line 111
    const/4 v2, 0x1

    .line 113
    :cond_5
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelaySettingActivity;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->a()V

    .line 114
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->o()V

    .line 115
    return-void

    .line 105
    :cond_6
    const-wide/16 v8, 0xa

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 106
    const/4 v2, 0x1

    goto :goto_3

    .line 107
    :cond_7
    const-wide/16 v8, 0xf

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 108
    const/4 v2, 0x2

    goto :goto_3
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
