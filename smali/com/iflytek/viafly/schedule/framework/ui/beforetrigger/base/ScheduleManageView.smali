.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleManageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;


# static fields
.field private static o:J


# instance fields
.field a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

.field b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

.field private c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private e:Lcom/iflytek/base/skin/customView/XEditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private i:Lcom/iflytek/base/skin/customView/XScrollView;

.field private j:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/content/Context;

.field private m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field private n:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 224
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->o:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "operationType"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->n:J

    .line 353
    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->p:J

    .line 68
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->l:Landroid/content/Context;

    .line 69
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 70
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 71
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 75
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p2, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 80
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAlarmNewsFlag()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 84
    .local v0, "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 90
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a()V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleManageView"

    const-string/jumbo v3, "\u4fdd\u5b58\u63d0\u9192\u4e34\u65f6\u65f6\u95f4\u4fe1\u606f\u51fa\u9519"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const v7, 0x7f0b060a

    const/16 v6, 0x8

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 99
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030105

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->j:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 103
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->j()V

    .line 104
    const v2, 0x7f0b060b

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 105
    .local v0, "bodyContainerLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-direct {v2, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    .line 106
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-direct {v2, p1, p2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    .line 107
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v2, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->setOnChangeListener(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;)V

    .line 111
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->setMultiple(Z)V

    .line 113
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    .line 115
    invoke-virtual {p2, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 117
    invoke-virtual {p2, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V

    .line 119
    invoke-virtual {p2, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    .line 121
    const v2, 0x7f0b0609

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XScrollView;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->i:Lcom/iflytek/base/skin/customView/XScrollView;

    .line 123
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-virtual {v0, v2, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;I)V

    .line 124
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v0, v2, v5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;I)V

    .line 127
    .end local v0    # "bodyContainerLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    :cond_1
    const v2, 0x7f0b05e7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 128
    .local v1, "contentLayout":Landroid/widget/LinearLayout;
    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 129
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :cond_2
    const v2, 0x7f0b05e9

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    .line 132
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XEditText;->clearFocus()V

    .line 134
    const v2, 0x7f0b05ea

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->k:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    const-string/jumbo v2, "SCHEDULE_TAG_TEXT"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f:Landroid/widget/TextView;

    .line 152
    const-string/jumbo v2, "SCHEDULE_TAG_EDIT"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    goto/16 :goto_0
.end method

.method private a(Z)Z
    .locals 6
    .param p1, "isCancel"    # Z

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "scheduleTitle":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 406
    .local v1, "scheduleContent":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->getCheckItem()Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    move-result-object v0

    .line 407
    .local v0, "checkItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    if-nez v0, :cond_0

    .line 431
    :goto_0
    return v3

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 411
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v5

    invoke-virtual {v5}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 412
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    if-nez p1, :cond_2

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->l:Landroid/content/Context;

    const-string/jumbo v5, "\u8bf7\u8f93\u5165\u64ad\u62a5\u5185\u5bb9"

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 431
    const/4 v3, 0x1

    goto :goto_0

    .line 427
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->n:J

    return-wide v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Lcom/iflytek/base/skin/customView/XScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->i:Lcom/iflytek/base/skin/customView/XScrollView;

    return-object v0
.end method

.method static synthetic i()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->o:J

    return-wide v0
.end method

.method private j()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 181
    const v0, 0x7f0b0609

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XScrollView;->setOverScrollMode(I)V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/16 v1, 0x1e

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v3, :cond_0

    .line 220
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string/jumbo v3, "ScheduleManageView"

    const-string/jumbo v4, "setView()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "title":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 198
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XEditText;->clearFocus()V

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 211
    .local v0, "len":I
    if-le v0, v1, :cond_4

    .line 213
    .local v1, "selection":I
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setSelection(I)V

    .line 215
    .end local v0    # "len":I
    .end local v1    # "selection":I
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b()V

    .line 217
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 218
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0

    .restart local v0    # "len":I
    :cond_4
    move v1, v0

    .line 211
    goto :goto_1
.end method

.method public a(Lavz;)V
    .locals 3
    .param p1, "scheduleRingToneItemData"    # Lavz;

    .prologue
    .line 446
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 328
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a()V

    .line 329
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string/jumbo v0, "ScheduleManageView"

    const-string/jumbo v1, "showToastTip()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->l:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "ScheduleManageView"

    const-string/jumbo v1, "setListener()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->i:Lcom/iflytek/base/skin/customView/XScrollView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->i:Lcom/iflytek/base/skin/customView/XScrollView;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$5;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XScrollView;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 333
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Z)Z

    .line 335
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 336
    .local v3, "title":Z
    const/4 v1, 0x0

    .line 342
    .local v1, "content":Z
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 344
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->a()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 345
    .local v0, "baseTimeSet":Z
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->b()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 346
    .local v2, "ringToneView":Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 349
    :goto_2
    return v5

    .end local v0    # "baseTimeSet":Z
    .end local v2    # "ringToneView":Z
    :cond_0
    move v0, v5

    .line 344
    goto :goto_0

    .restart local v0    # "baseTimeSet":Z
    :cond_1
    move v2, v5

    .line 345
    goto :goto_1

    .restart local v2    # "ringToneView":Z
    :cond_2
    move v5, v4

    .line 349
    goto :goto_2
.end method

.method public e()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b()V

    .line 383
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a()V

    .line 384
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 387
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Z)Z

    .line 388
    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 393
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getEditedSchedule()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Z)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    const-string/jumbo v0, "ScheduleManageView"

    const-string/jumbo v1, "-------------------->>> onClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 362
    const-string/jumbo v0, "ScheduleManageView"

    const-string/jumbo v1, "-------------------->>> Click too much!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->p:J

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->b()V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e:Lcom/iflytek/base/skin/customView/XEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b05e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setContentLengthLimit(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 229
    const-string/jumbo v1, "ScheduleManageView"

    const-string/jumbo v2, "----------->> setContentLengthLimit()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 234
    .local v0, "filters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;

    const/16 v3, 0x1e

    invoke-direct {v2, p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;I)V

    aput-object v2, v0, v1

    .line 254
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 255
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$4;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$4;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleBaseTimeSetView;->setEditable(Z)V

    .line 440
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->setEditable(Z)V

    .line 441
    return-void
.end method
