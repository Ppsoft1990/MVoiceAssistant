.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "ScheduleRingToneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lawj;

.field private g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

.field private h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private i:Landroid/content/Context;

.field private j:Landroid/net/Uri;

.field private k:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field private m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "operationType"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a:Ljava/util/List;

    .line 71
    new-instance v1, Lawj;

    invoke-direct {v1, p1}, Lawj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->f:Lawj;

    .line 72
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 75
    invoke-direct {p0, p2, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->b:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 78
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 79
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->c:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->d:I

    .line 85
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 86
    invoke-virtual {p2, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "ringtoneName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 88
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->e:Ljava/lang/String;

    .line 95
    .end local v0    # "ringtoneName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->c:Ljava/lang/String;

    goto :goto_0

    .line 90
    .restart local v0    # "ringtoneName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Z)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLast"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 148
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "divier":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v0, "dividerParams":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p2, :cond_0

    .line 151
    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    :cond_0
    const/high16 v2, 0x1f000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-object v1
.end method

.method private a(Lcom/iflytek/base/skin/customView/XLinearLayout;)V
    .locals 21
    .param p1, "contentlLayout"    # Lcom/iflytek/base/skin/customView/XLinearLayout;

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v10, "scheduleRingToneItems":Ljava/util/List;, "Ljava/util/List<Lavz;>;"
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    sget-object v18, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual/range {v17 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, "subType":Ljava/lang/String;
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 407
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordMorning:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v7

    .line 409
    .local v7, "morningData":Lavz;
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v12

    .line 410
    .local v12, "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v12, :cond_6

    .line 411
    const-string/jumbo v13, "\u65e0"

    .line 415
    .local v13, "speakerName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v13}, Lavz;->a(Ljava/lang/String;)V

    .line 422
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lavz;->a(Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lavz;->b(Ljava/lang/String;)V

    .line 424
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v7    # "morningData":Lavz;
    .end local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v13    # "speakerName":Ljava/lang/String;
    .end local v14    # "subType":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v11, 0x0

    .line 489
    .local v11, "size":I
    if-eqz v10, :cond_3

    .line 490
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 492
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v11, :cond_f

    .line 493
    new-instance v15, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lavz;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->f:Lawj;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;-><init>(Landroid/content/Context;Lavz;Lawj;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 494
    .local v15, "tempView":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setOnChangeListener(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;)V

    .line 495
    const v17, 0x7f0203e3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setBackgroundResource(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->l:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setOperationType(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v17

    invoke-virtual {v15}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 498
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    .line 499
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .line 501
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    if-lez v4, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 506
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 413
    .end local v4    # "i":I
    .end local v11    # "size":I
    .end local v15    # "tempView":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    .restart local v7    # "morningData":Lavz;
    .restart local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .restart local v14    # "subType":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "speakerName":Ljava/lang/String;
    goto/16 :goto_1

    .line 425
    .end local v7    # "morningData":Lavz;
    .end local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v13    # "speakerName":Ljava/lang/String;
    :cond_7
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 426
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->RecordNight:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v8

    .line 428
    .local v8, "nightData":Lavz;
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v12

    .line 429
    .restart local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v12, :cond_8

    .line 430
    const-string/jumbo v13, "\u65e0"

    .line 434
    .restart local v13    # "speakerName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v8, v13}, Lavz;->a(Ljava/lang/String;)V

    .line 441
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lavz;->a(Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lavz;->b(Ljava/lang/String;)V

    .line 443
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 432
    .end local v13    # "speakerName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v12}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "speakerName":Ljava/lang/String;
    goto :goto_4

    .line 445
    .end local v8    # "nightData":Lavz;
    .end local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v13    # "speakerName":Ljava/lang/String;
    .end local v14    # "subType":Ljava/lang/String;
    :cond_9
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 447
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Weather:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v16

    .line 449
    .local v16, "weatherData":Lavz;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v12

    .line 450
    .restart local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v12, :cond_a

    .line 451
    const-string/jumbo v13, "\u65e0"

    .line 455
    .restart local v13    # "speakerName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lavz;->a(Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lavz;->b(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 453
    .end local v13    # "speakerName":Ljava/lang/String;
    :cond_a
    invoke-virtual {v12}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "speakerName":Ljava/lang/String;
    goto :goto_5

    .line 458
    .end local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v13    # "speakerName":Ljava/lang/String;
    .end local v16    # "weatherData":Lavz;
    :cond_b
    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    sget-object v17, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 460
    :cond_c
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->LONG:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v5

    .line 462
    .local v5, "longData":Lavz;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v12

    .line 463
    .restart local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v12, :cond_d

    .line 464
    const-string/jumbo v13, "\u65e0"

    .line 468
    .restart local v13    # "speakerName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v5, v13}, Lavz;->a(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lavz;->b(Ljava/lang/String;)V

    .line 470
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    sget-object v18, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual/range {v17 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v13

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "ringPath":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string/jumbo v17, "\u55d2\u94c3\u58f0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 476
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Local:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v6

    .line 482
    .local v6, "moreData":Lavz;
    :goto_7
    const-string/jumbo v17, "\u97f3\u4e50\u94c3\u58f0"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lavz;->b(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v6, v9}, Lavz;->c(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v6, v13}, Lavz;->a(Ljava/lang/String;)V

    .line 485
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 466
    .end local v6    # "moreData":Lavz;
    .end local v9    # "ringPath":Ljava/lang/String;
    .end local v13    # "speakerName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v12}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "speakerName":Ljava/lang/String;
    goto :goto_6

    .line 478
    .restart local v9    # "ringPath":Ljava/lang/String;
    :cond_e
    const-string/jumbo v13, "\u55d2\u94c3\u58f0"

    .line 479
    const-string/jumbo v9, "android_asset://ringtone/notice.mp3"

    .line 480
    sget-object v17, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->SHORT:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v6

    .restart local v6    # "moreData":Lavz;
    goto :goto_7

    .line 509
    .end local v5    # "longData":Lavz;
    .end local v6    # "moreData":Lavz;
    .end local v9    # "ringPath":Ljava/lang/String;
    .end local v12    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v13    # "speakerName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v11    # "size":I
    :cond_f
    if-lez v11, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Landroid/content/Context;)V
    .locals 11
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-string/jumbo v7, "ScheduleRingToneView"

    const-string/jumbo v8, "initView "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v5, "rootView":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v4, "rootParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->addView(Landroid/view/View;)V

    .line 113
    new-instance v6, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v6, p2}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v6, "titleTextView":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v7, "\u94c3\u58f0"

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v7, 0x2

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 118
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const-wide/high16 v8, 0x4046000000000000L    # 44.0

    invoke-static {p2, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {p2, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 121
    invoke-virtual {v6, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 123
    const v7, 0x7f0a0013

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const/4 v7, 0x1

    invoke-direct {p0, p2, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v1, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "contentlLayout":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v0, "contentLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 135
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setBackgroundColor(I)V

    .line 138
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a(Lcom/iflytek/base/skin/customView/XLinearLayout;)V

    .line 141
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "STAR_ENTRY_TYPE"

    const-string/jumbo v2, "morning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x190

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 392
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a()V

    .line 170
    :cond_0
    return-void
.end method

.method public a(Lavz;)V
    .locals 9
    .param p1, "scheduleRingToneItemData"    # Lavz;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 291
    if-nez p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p1}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    .line 296
    .local v1, "scheduleType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    const-string/jumbo v3, "ScheduleRingToneView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemChecked  scheduleType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .line 298
    .local v0, "scheduleRingToneViewItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    .line 299
    .local v2, "tmpScheduleType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    if-ne v1, v2, :cond_5

    .line 300
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v2, v4, :cond_4

    .line 302
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v4

    invoke-virtual {v4}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v4

    .line 303
    invoke-virtual {p1}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 304
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 305
    invoke-virtual {p1}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    .line 307
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .line 315
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    goto :goto_2

    .line 312
    :cond_4
    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    .line 313
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    goto :goto_2

    .line 317
    :cond_5
    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->setChecked(Z)V

    .line 318
    sget-object v4, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 320
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b()V

    goto :goto_1

    .line 325
    .end local v0    # "scheduleRingToneViewItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    .end local v2    # "tmpScheduleType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    :cond_6
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v3, v1, :cond_0

    .line 326
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;->a(Lavz;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 10
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 174
    const-string/jumbo v7, "ScheduleRingToneView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update schedule "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a:Ljava/util/List;

    if-nez v7, :cond_1

    .line 254
    :cond_0
    return-void

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 179
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    .line 180
    .local v4, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "ringtonePath":Ljava/lang/String;
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "ringtoneName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 189
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v7, v4, :cond_2

    .line 191
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "android_asset://"

    .line 193
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 194
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->i:Landroid/content/Context;

    invoke-static {v7}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v7

    .line 195
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Laxa;->a(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 196
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v8, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->c:Ljava/lang/String;

    .line 199
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->e:Ljava/lang/String;

    .line 203
    :cond_2
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .line 204
    .local v1, "itemView":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v0

    .line 205
    .local v0, "data":Lavz;
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    if-eq v8, v9, :cond_3

    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    if-ne v8, v9, :cond_8

    .line 206
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    const-string/jumbo v2, "\u55d2\u94c3\u58f0"

    .line 208
    const-string/jumbo v3, "android_asset://ringtone/notice.mp3"

    .line 210
    :cond_4
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v8, v4, :cond_7

    .line 211
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->SHORT:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v0

    .line 215
    :cond_5
    :goto_1
    const-string/jumbo v8, "\u97f3\u4e50\u94c3\u58f0"

    invoke-virtual {v0, v8}, Lavz;->b(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v2}, Lavz;->a(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v3}, Lavz;->c(Ljava/lang/String;)V

    .line 252
    :cond_6
    :goto_2
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->a(Lavz;)V

    goto :goto_0

    .line 212
    :cond_7
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v8, v4, :cond_5

    .line 213
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->Local:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView$ScheduleRingtoneItemType;->getScheduleRingToneItem()Lavz;

    move-result-object v0

    goto :goto_1

    .line 218
    :cond_8
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    if-ne v8, v9, :cond_a

    .line 220
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v8

    invoke-virtual {v8}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v5

    .line 221
    .local v5, "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v5, :cond_9

    .line 222
    const-string/jumbo v6, "\u65e0"

    .line 226
    .local v6, "speakerName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v6}, Lavz;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lavz;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v6    # "speakerName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "speakerName":Ljava/lang/String;
    goto :goto_3

    .line 228
    .end local v5    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v6    # "speakerName":Ljava/lang/String;
    :cond_a
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    if-ne v8, v9, :cond_c

    .line 230
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v8

    invoke-virtual {v8}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v5

    .line 231
    .restart local v5    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v5, :cond_b

    .line 232
    const-string/jumbo v6, "\u65e0"

    .line 236
    .restart local v6    # "speakerName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v6}, Lavz;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    .end local v6    # "speakerName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "speakerName":Ljava/lang/String;
    goto :goto_4

    .line 237
    .end local v5    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v6    # "speakerName":Ljava/lang/String;
    :cond_c
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingToneType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 238
    const/4 v5, 0x0

    .line 240
    .restart local v5    # "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v9

    invoke-virtual {v9}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v9

    if-ne v8, v9, :cond_e

    .line 241
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v8

    invoke-virtual {v8}, Lbbg;->c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v5

    .line 245
    :cond_d
    :goto_5
    if-nez v5, :cond_f

    .line 246
    const-string/jumbo v6, "\u65e0"

    .line 250
    .restart local v6    # "speakerName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v0, v6}, Lavz;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    .end local v6    # "speakerName":Ljava/lang/String;
    :cond_e
    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v9

    invoke-virtual {v9}, Lavz;->e()Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    move-result-object v9

    if-ne v8, v9, :cond_d

    .line 243
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v8

    invoke-virtual {v8}, Lbbg;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v5

    goto :goto_5

    .line 248
    :cond_f
    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "speakerName":Ljava/lang/String;
    goto :goto_6
.end method

.method public b()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 262
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v6, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v4

    .line 265
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v3

    .line 266
    .local v3, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "ringtonePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    .line 268
    .local v0, "ringtoneId":I
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->h:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "ringtoneName":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->b:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->b:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v6, v3, :cond_2

    move v4, v5

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v6, v3, :cond_3

    .line 274
    iget v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->d:I

    if-eq v0, v6, :cond_0

    move v4, v5

    .line 275
    goto :goto_0

    .line 280
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->e:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 281
    goto :goto_0

    .line 283
    :cond_4
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 284
    goto :goto_0
.end method

.method public getCheckItem()Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->k:Lcom/iflytek/viafly/ui/view/CircleImageView;

    if-ne p1, v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->c()V

    .line 386
    :cond_0
    return-void
.end method

.method public setEditable(Z)V
    .locals 4
    .param p1, "editable"    # Z

    .prologue
    const v3, 0x7f0b061b

    const v2, 0x7f0a0011

    const/4 v1, 0x0

    .line 520
    if-nez p1, :cond_0

    .line 521
    const v0, 0x7f0b061a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 522
    const v0, 0x7f0b061e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 523
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 524
    const v0, 0x7f0b0620

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 526
    const v0, 0x7f0b061f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    const v0, 0x7f0b0621

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;)V
    .locals 0
    .param p1, "onItemCheckedListener"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->m:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$a;

    .line 145
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->j:Landroid/net/Uri;

    .line 160
    return-void
.end method
