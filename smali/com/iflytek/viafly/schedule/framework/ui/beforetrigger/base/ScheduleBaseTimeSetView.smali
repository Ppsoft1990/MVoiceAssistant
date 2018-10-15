.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleBaseTimeSetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;,
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
    }
.end annotation


# instance fields
.field a:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;

.field c:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private g:Landroid/content/Context;

.field private h:Lcom/iflytek/base/skin/customView/XImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Z

.field private k:Landroid/graphics/drawable/AnimationDrawable;

.field private l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 58
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleMultiTimesEdit;

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->j:Z

    .line 68
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->k:Landroid/graphics/drawable/AnimationDrawable;

    .line 374
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->m:J

    .line 79
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setView(Landroid/content/Context;)V

    .line 82
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 83
    if-eqz p2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 85
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 86
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p2, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 93
    :try_start_0
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 94
    .local v0, "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 101
    :cond_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleBaseTimeSetView"

    const-string/jumbo v3, "\u4fdd\u5b58\u63d0\u9192\u4e34\u65f6\u65f6\u95f4\u4fe1\u606f\u51fa\u9519"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setDayShow(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setTimeShow(Landroid/widget/TextView;)V

    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method private c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 2
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 283
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 505
    const-string/jumbo v2, "ScheduleBaseTimeSetView"

    const-string/jumbo v3, "startRepeatSettingActivity()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 509
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x6e

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDayShow(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 228
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 232
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 233
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 234
    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 235
    .local v2, "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 236
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 237
    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/4 v4, 0x5

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 239
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    .line 240
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 239
    invoke-static {v4, v6, v7}, Lbaa;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "dayShow":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const-string/jumbo v4, "ScheduleBaseTimeSetView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "------>> setDayShow() | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRepeatShow(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 297
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-static {v0}, Lawh;->a(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTimeShow(Landroid/widget/TextView;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 254
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    const/4 v2, 0x0

    .line 255
    .local v2, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v4

    .line 256
    .local v4, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v4, :cond_3

    .line 257
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v5, v0

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 258
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v6

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 259
    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v5

    .line 260
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v5

    invoke-direct {v2, v6, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 267
    .restart local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 269
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 270
    const/16 v5, 0xc

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 271
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 272
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 271
    invoke-static {v5, v6, v7}, Lbaa;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "timeShow":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const-string/jumbo v5, "ScheduleBaseTimeSetView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "------>> setTimeShow() | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v3    # "timeShow":Ljava/lang/String;
    .restart local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_3
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v5, v4, :cond_4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v5, v4, :cond_4

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v4, :cond_2

    .line 264
    :cond_4
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .restart local v2    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const v2, 0x7f0b05e1

    .line 302
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v0, v1, :cond_1

    .line 311
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const v0, 0x7f0b05e3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setDayShow(Landroid/widget/TextView;)V

    .line 317
    :goto_1
    const v0, 0x7f0b05e6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setRepeatShow(Landroid/widget/TextView;)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c()V

    .line 370
    return-void
.end method

.method protected b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "ret":Z
    if-eqz p1, :cond_1

    .line 524
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 525
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v2

    .line 527
    .local v2, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v3, v2, :cond_0

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v3, v2, :cond_0

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v3, v2, :cond_0

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v2, :cond_1

    .line 528
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isLegal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    const/4 v1, 0x1

    .line 534
    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v2    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_1
    const-string/jumbo v3, "ScheduleBaseTimeSetView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "------>> checkDateTimeInfor() | return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return v1
.end method

.method public getTimePickerContainer()Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->m:J

    move-wide/from16 v18, v0

    sub-long v6, v6, v18

    const-wide/16 v18, 0x1f4

    cmp-long v3, v6, v18

    if-gez v3, :cond_1

    .line 380
    const-string/jumbo v3, "ScheduleBaseTimeSetView"

    const-string/jumbo v4, "-------------------->>> Click too much!"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->m:J

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 387
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c()V

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v3, v4, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 391
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 393
    .local v14, "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :try_start_0
    invoke-static {}, Lqe;->a()I

    move-result v15

    .line 394
    .local v15, "sdk":I
    const/4 v2, 0x0

    .line 395
    .local v2, "dataPickerDialog":Landroid/app/DatePickerDialog;
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;

    const v3, 0x7f0b05e3

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V

    .line 397
    .local v5, "listener":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
    const/16 v3, 0xe

    if-lt v15, v3, :cond_2

    .line 398
    new-instance v2, Landroid/app/DatePickerDialog;

    .end local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    const/4 v4, 0x3

    .line 400
    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v6

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 401
    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 407
    .restart local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    :goto_1
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .end local v5    # "listener":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
    .end local v15    # "sdk":I
    :catch_0
    move-exception v13

    .line 409
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleBaseTimeSetView"

    const-string/jumbo v4, "open DatePickerDialog error!"

    invoke-static {v3, v4, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .restart local v5    # "listener":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
    .restart local v15    # "sdk":I
    :cond_2
    :try_start_1
    new-instance v2, Landroid/app/DatePickerDialog;

    .end local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    .line 404
    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getYear()I

    move-result v6

    .line 405
    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMonth()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v14}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getDay()I

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    goto :goto_1

    .line 415
    .end local v2    # "dataPickerDialog":Landroid/app/DatePickerDialog;
    .end local v5    # "listener":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$a;
    .end local v14    # "onceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v15    # "sdk":I
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c()V

    .line 418
    const/4 v9, -0x1

    .line 419
    .local v9, "hour":I
    const/4 v10, -0x1

    .line 420
    .local v10, "minute":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v17

    .line 421
    .local v17, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 423
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 424
    .local v12, "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v9

    .line 425
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v10

    .line 435
    .end local v12    # "date":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    :cond_3
    :goto_2
    const/4 v3, -0x1

    if-eq v9, v3, :cond_0

    const/4 v3, -0x1

    if-eq v10, v3, :cond_0

    .line 436
    new-instance v6, Landroid/app/TimePickerDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->g:Landroid/content/Context;

    new-instance v8, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;

    const v3, 0x7f0b0624

    .line 437
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$b;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;Landroid/widget/TextView;)V

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 438
    invoke-virtual {v6}, Landroid/app/TimePickerDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 440
    .end local v17    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :catch_1
    move-exception v13

    .line 441
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScheduleBaseTimeSetView"

    const-string/jumbo v4, "open TimePickerDialog error!"

    invoke-static {v3, v4, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 426
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v17    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_4
    :try_start_3
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_5

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_5

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_3

    .line 429
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->f:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .line 430
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 431
    .local v16, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v9

    .line 432
    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    goto :goto_2

    .line 446
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v16    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    .end local v17    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c()V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->d()V

    goto/16 :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x7f0b05e1 -> :sswitch_0
        0x7f0b05e4 -> :sswitch_2
        0x7f0b0623 -> :sswitch_1
    .end sparse-switch
.end method

.method public setEditable(Z)V
    .locals 4
    .param p1, "editable"    # Z

    .prologue
    const v3, 0x7f0b05e9

    const/4 v1, 0x0

    const v2, 0x7f0a0011

    .line 634
    if-nez p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setEnabled(Z)V

    .line 636
    const v0, 0x7f0b05e4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 637
    const v0, 0x7f0b05e1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    const v0, 0x7f0b05e3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    const v0, 0x7f0b05e2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    const v0, 0x7f0b05e6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    const v0, 0x7f0b05e5

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    const v0, 0x7f0b05e8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    :cond_0
    return-void
.end method

.method public setView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0b05ec

    const/4 v7, 0x0

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 111
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0300fa

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->h:Lcom/iflytek/base/skin/customView/XImageView;

    .line 113
    const v5, 0x7f0b05eb

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->i:Landroid/widget/LinearLayout;

    .line 123
    const v5, 0x7f0b05df

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 124
    const v5, 0x7f0b05e0

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .line 125
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 126
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 127
    .local v0, "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    const/4 v3, 0x0

    .line 128
    .local v3, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v4

    .line 129
    .local v4, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v4, :cond_2

    .line 130
    new-instance v3, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v3    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    move-object v5, v0

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 131
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getHour()I

    move-result v6

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    .line 132
    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v5

    .line 133
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->getMinute()I

    move-result v5

    invoke-direct {v3, v6, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 139
    .restart local v3    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 140
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getHour()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentHour(I)V

    .line 141
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->getMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setCurrentMinute(I)V

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->l:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    new-instance v6, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;)V

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->setOnTimeChangedListener(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$OnTimeChangedListener;)V

    .line 179
    const v5, 0x7f0b05e1

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v5, 0x7f0b05e4

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->e:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 218
    return-void

    .line 134
    .restart local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_2
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v5, v4, :cond_3

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v5, v4, :cond_3

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v5, v4, :cond_0

    .line 137
    :cond_3
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;

    .end local v0    # "baseDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/BaseTimeDatetimeInfor;->getTimeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .restart local v3    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    goto :goto_0
.end method
