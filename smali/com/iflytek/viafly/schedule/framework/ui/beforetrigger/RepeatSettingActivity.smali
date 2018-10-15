.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "RepeatSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field private d:I

.field private e:[Z

.field private f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

.field private g:[I

.field private h:[I

.field private i:Lcom/iflytek/base/skin/customView/XTextView;

.field private j:Lcom/iflytek/base/skin/customView/XTextView;

.field private k:Lcom/iflytek/base/skin/customView/XTextView;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 41
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    .line 49
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->g:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->h:[I

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->l:J

    return-void

    .line 49
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x7f0b05b0
        0x7f0b05b2
        0x7f0b05c7
    .end array-data

    .line 59
    :array_2
    .array-data 4
        0x7f0b05b9
        0x7f0b05bb
        0x7f0b05bd
        0x7f0b05bf
        0x7f0b05c1
        0x7f0b05c3
        0x7f0b05c5
    .end array-data
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v2, :cond_1

    .line 133
    const v1, 0x7f0b05b0

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v2, :cond_3

    .line 137
    const v1, 0x7f0b05b2

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 138
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(ZI)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f()V

    goto :goto_0

    .line 144
    .end local v0    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v1, v2, :cond_0

    .line 145
    const v1, 0x7f0b05c7

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 146
    const v1, 0x7f0b05c9

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6bcf\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u53f7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setSelectDay(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .param p1, "currentTypeId"    # I

    .prologue
    const v1, 0x7f0b05c9

    const/4 v2, -0x1

    .line 336
    const v0, 0x7f0b05af

    if-ne p1, v0, :cond_1

    .line 339
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setSelectDay(I)V

    .line 343
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->g()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const v0, 0x7f0b05b1

    if-ne p1, v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setSelectDay(I)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_2
    const v0, 0x7f0b05c6

    if-ne p1, v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    return-void
.end method

.method private a(ZI)V
    .locals 4
    .param p1, "isSelect"    # Z
    .param p2, "index"    # I

    .prologue
    .line 540
    const-string/jumbo v1, "ScheduleRepeatSetActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectWeek() | index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->h:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 542
    .local v0, "weekButton":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz p1, :cond_0

    .line 543
    const-string/jumbo v1, "image.remind_set_repeat_week_item_selected_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 544
    const-string/jumbo v1, "style_reminder_repeat_setting_week_item_checked"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    const-string/jumbo v1, "image.remind_set_repeat_week_item_unselected_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 547
    const-string/jumbo v1, "style_reminder_repeat_setting_week_item_unchecked"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 88
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 91
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 93
    const-string/jumbo v2, "ScheduleRepeatSetActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initIntent() | repeatType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v2, v5, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lawh;->a(J)I

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v2, v5, :cond_1

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v2, v5, :cond_2

    .line 105
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->getWeekList()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .line 107
    .local v0, "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->getWeekDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 111
    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    .end local v1    # "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;>;"
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v2, v5, :cond_3

    .line 112
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;->getMonthDayList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->getMonthDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    .line 113
    const v2, 0x7f0b05c9

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6bcf\u6708"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u53f7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move v2, v3

    .line 120
    :goto_1
    return v2

    .line 118
    :cond_4
    const-string/jumbo v2, "ScheduleRepeatSetActivity"

    const-string/jumbo v3, "initIntent() | repeatResult=null -> return false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v4

    .line 120
    goto :goto_1
.end method

.method private a([Z)[I
    .locals 7
    .param p1, "weeks"    # [Z

    .prologue
    .line 505
    const/4 v5, 0x0

    .line 506
    .local v5, "result":[I
    const/4 v4, 0x0

    .line 507
    .local v4, "length":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_1

    .line 508
    aget-boolean v6, p1, v0

    if-eqz v6, :cond_0

    .line 509
    add-int/lit8 v4, v4, 0x1

    .line 507
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    if-lez v4, :cond_3

    .line 513
    new-array v5, v4, [I

    .line 514
    const/4 v3, 0x0

    .local v3, "indexOfWeeks":I
    const/4 v1, 0x0

    .local v1, "indexOfResult":I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    if-ge v1, v4, :cond_3

    .line 515
    aget-boolean v6, p1, v3

    if-eqz v6, :cond_2

    .line 516
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "indexOfResult":I
    .local v2, "indexOfResult":I
    add-int/lit8 v6, v3, 0x1

    aput v6, v5, v1

    move v1, v2

    .line 514
    .end local v2    # "indexOfResult":I
    .restart local v1    # "indexOfResult":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 520
    .end local v1    # "indexOfResult":I
    .end local v3    # "indexOfWeeks":I
    :cond_3
    return-object v5
.end method

.method private b()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c()V

    .line 153
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0b05af

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0b05b1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0b05b8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0b05ba

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0b05bc

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0b05be

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f0b05c0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0b05c2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0b05c4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0b05c6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0b05ca

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setOnItemClickListener(Lavw$a;)V

    .line 179
    const v0, 0x7f0b05b6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    .line 180
    const v0, 0x7f0b05b5

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    .line 181
    const v0, 0x7f0b05b4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method private b(I)V
    .locals 7
    .param p1, "selectedId"    # I

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->g:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 525
    .local v0, "id":I
    if-ne p1, v0, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 531
    .end local v0    # "id":I
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private c(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 578
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 579
    const v0, 0x7f0b05b2

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 580
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    .line 581
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v0, v0, p1

    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(ZI)V

    .line 582
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f()V

    .line 583
    const v0, 0x7f0b05b1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    .line 584
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x7

    .line 588
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 589
    const v0, 0x7f0b05b2

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 590
    packed-switch p1, :pswitch_data_0

    .line 616
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f()V

    .line 617
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e()V

    .line 618
    const v0, 0x7f0b05b1

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    .line 619
    return-void

    .line 592
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 595
    :cond_0
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 599
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 602
    :cond_1
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 606
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    new-array v0, v1, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 609
    :cond_2
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 593
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 595
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 600
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 602
    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 607
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 609
    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method private d()Z
    .locals 20

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_0

    .line 408
    const/4 v3, 0x1

    .line 501
    :goto_0
    return v3

    .line 410
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_1

    .line 411
    const/4 v3, 0x1

    goto :goto_0

    .line 414
    :cond_1
    const-wide/16 v8, 0x0

    .line 415
    .local v8, "caculateTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getOnce(Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;)J

    move-result-wide v8

    .line 431
    :goto_1
    const/4 v11, 0x0

    .line 432
    .local v11, "dateTimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-lez v3, :cond_b

    .line 433
    const/4 v12, 0x0

    .line 434
    .local v12, "isOnce":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_5

    .line 435
    const/4 v12, 0x1

    .line 436
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 437
    .local v15, "temp":Ljava/util/Calendar;
    invoke-virtual {v15, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 439
    .local v14, "result":Ljava/util/Calendar;
    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v14, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 440
    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v14, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 441
    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v14, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 442
    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v14, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 443
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v11

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_4

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v13

    .line 446
    .local v13, "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .local v2, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object v3, v11

    .line 447
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    goto :goto_2

    .line 419
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v11    # "dateTimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v12    # "isOnce":Z
    .end local v13    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    .end local v14    # "result":Ljava/util/Calendar;
    .end local v15    # "temp":Ljava/util/Calendar;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 420
    .local v16, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 421
    .local v10, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v3, 0xc

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 423
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 425
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 426
    goto/16 :goto_1

    .line 428
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeCalculateHelper;->getNextTime(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;J)J

    move-result-wide v8

    goto/16 :goto_1

    .line 450
    .restart local v11    # "dateTimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .restart local v12    # "isOnce":Z
    .restart local v14    # "result":Ljava/util/Calendar;
    .restart local v15    # "temp":Ljava/util/Calendar;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v17

    .line 451
    .local v17, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 452
    .restart local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 453
    .restart local v10    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 454
    const/16 v3, 0xb

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 455
    const/16 v3, 0xc

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 456
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 457
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 458
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 459
    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    .line 460
    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    .line 461
    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 462
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    .restart local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object v3, v11

    .line 463
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addMultiOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    goto :goto_3

    .line 467
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v10    # "calendar":Ljava/util/Calendar;
    .end local v14    # "result":Ljava/util/Calendar;
    .end local v15    # "temp":Ljava/util/Calendar;
    .end local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v17    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_7

    .line 468
    invoke-static {v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterEveryday(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v11

    .line 481
    :cond_6
    :goto_4
    if-nez v12, :cond_b

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_a

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getMultiOnceDateList()Ljava/util/List;

    move-result-object v13

    .line 484
    .restart local v13    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .restart local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object v3, v11

    .line 485
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v6

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_5

    .line 469
    .end local v2    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v13    # "onceDateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_9

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a([Z)[I

    move-result-object v18

    .line 471
    .local v18, "weeks":[I
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_8

    .line 472
    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    move-result-object v11

    goto :goto_4

    .line 474
    :cond_8
    const-string/jumbo v3, "\u65e0\u6cd5\u4fdd\u5b58\uff0c\u8bf7\u9009\u62e9\u661f\u671f"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 475
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 477
    .end local v18    # "weeks":[I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_6

    .line 478
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    aput v5, v3, v4

    invoke-static {v3, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterMonthDate([IJ)Lcom/iflytek/viafly/schedule/framework/entities/MonthDatetimeInfor;

    move-result-object v11

    goto/16 :goto_4

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getMultiTimeList()Ljava/util/List;

    move-result-object v17

    .line 489
    .restart local v17    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .restart local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v3, v11

    .line 490
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->addMultiTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    goto :goto_6

    .line 496
    .end local v12    # "isOnce":Z
    .end local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v17    # "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Time;>;"
    :cond_b
    if-eqz v11, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isMultiple()Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->setMultiple(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 499
    const-string/jumbo v3, "ScheduleRepeatSetActivity"

    const-string/jumbo v4, "saveRepeatResult() | success!"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(ZI)V

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 555
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a([Z)[I

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterWeek([IJ)Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    move-result-object v1

    invoke-static {v1}, Lawh;->a(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "showWeek":Ljava/lang/String;
    const-string/jumbo v1, "\u5de5\u4f5c\u65e5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 558
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_selected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 559
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 574
    :goto_0
    return-void

    .line 560
    :cond_0
    const-string/jumbo v1, "\u5468\u672b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 562
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 563
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_selected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 564
    :cond_1
    const-string/jumbo v1, "\u6bcf\u5929"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_selected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 566
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 567
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 570
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 571
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 623
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    .line 624
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e()V

    .line 625
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->i:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 626
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->j:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 627
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "image.remind_set_repeat_week_type_unselected_bg"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 628
    return-void

    .line 623
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 637
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 644
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    .line 647
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->e:[Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 657
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->l:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 225
    const-string/jumbo v1, "ScheduleRepeatSetActivity"

    const-string/jumbo v2, "--------->> click too much!"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->l:J

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 232
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 236
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleLeftButton()V

    goto :goto_0

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 242
    const v1, 0x7f0b05b0

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 245
    const v1, 0x7f0b05af

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    goto :goto_0

    .line 257
    :sswitch_2
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 258
    const v1, 0x7f0b05b2

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 268
    const v1, 0x7f0b05b1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    goto :goto_0

    .line 272
    :sswitch_3
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 273
    const v1, 0x7f0b05c7

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(I)V

    .line 276
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 277
    const v1, 0x7f0b05c9

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6bcf\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u53f7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->f:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d:I

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->setSelectDay(I)V

    .line 284
    const v1, 0x7f0b05c6

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(I)V

    goto/16 :goto_0

    .line 288
    :sswitch_4
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 292
    :sswitch_5
    invoke-direct {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_6
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 300
    :sswitch_7
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 304
    :sswitch_8
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 308
    :sswitch_9
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 312
    :sswitch_a
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(I)V

    goto/16 :goto_0

    .line 316
    :sswitch_b
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d(I)V

    goto/16 :goto_0

    .line 320
    :sswitch_c
    invoke-direct {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d(I)V

    goto/16 :goto_0

    .line 324
    :sswitch_d
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d(I)V

    goto/16 :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0237 -> :sswitch_0
        0x7f0b05af -> :sswitch_1
        0x7f0b05b1 -> :sswitch_2
        0x7f0b05b4 -> :sswitch_d
        0x7f0b05b5 -> :sswitch_c
        0x7f0b05b6 -> :sswitch_b
        0x7f0b05b8 -> :sswitch_4
        0x7f0b05ba -> :sswitch_5
        0x7f0b05bc -> :sswitch_6
        0x7f0b05be -> :sswitch_7
        0x7f0b05c0 -> :sswitch_8
        0x7f0b05c2 -> :sswitch_9
        0x7f0b05c4 -> :sswitch_a
        0x7f0b05c6 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onClickTitleLeftButton()V
    .locals 3

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 214
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleLeftButton()V

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 202
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->onClickTitleLeftButton()V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
