.class public Lavu;
.super Ljava/lang/Object;
.source "SpeechAddScheduleGuideManager.java"


# static fields
.field private static d:Lavu;


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/content/Context;

.field private c:Z

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavu;->c:Z

    .line 140
    new-instance v0, Lavu$2;

    invoke-direct {v0, p0}, Lavu$2;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->e:Landroid/os/Handler;

    .line 144
    new-instance v0, Lavu$3;

    invoke-direct {v0, p0}, Lavu$3;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->f:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lavu;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lavu;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lavu;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 29
    iput-object p1, p0, Lavu;->a:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lavu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lavu;->d:Lavu;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lavu;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lavu;->d:Lavu;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lavu;

    invoke-direct {v0, p0}, Lavu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavu;->d:Lavu;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lavu;->d:Lavu;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lavu;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lavu;

    .prologue
    .line 29
    iget-object v0, p0, Lavu;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lavu;Z)Z
    .locals 0
    .param p0, "x0"    # Lavu;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lavu;->c:Z

    return p1
.end method

.method static synthetic b(Lavu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lavu;

    .prologue
    .line 29
    iget-object v0, p0, Lavu;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lavu;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lavu;

    .prologue
    .line 29
    iget-object v0, p0, Lavu;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a(Lqr;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 24
    .param p1, "anchor"    # Lqr;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lqr;->e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v16

    sget-object v17, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 79
    const-string/jumbo v16, "SpeechAddScheduleGuideManager"

    const-string/jumbo v17, "user has click button, so dont need show guide"

    invoke-static/range {v16 .. v17}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->a:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f030135

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, "contentView":Landroid/view/View;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 86
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 87
    const v16, 0x7f0b06ed

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XTextView;

    .line 88
    .local v11, "scheduleContentTextView":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz p2, :cond_4

    .line 89
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v16, "\u4e5f\u53ef\u70b9\u9ea6\u514b\u98ce\u8bf4\u4e00\u53e5\u201c"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v12

    .line 92
    .local v12, "scheduleTriggerTime":J
    const-wide/16 v16, -0x1

    cmp-long v16, v16, v12

    if-nez v16, :cond_2

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v12

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Lbaa;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "manualAddScheduleGuideDateDesc":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v16, "\u63d0\u9192\u6211"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "content":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 100
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    const-string/jumbo v16, "\u201d\uff0c\u5feb\u901f\u5efa\u63d0\u9192"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v4    # "content":Ljava/lang/String;
    .end local v7    # "manualAddScheduleGuideDateDesc":Ljava/lang/String;
    .end local v12    # "scheduleTriggerTime":J
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v16, Landroid/widget/PopupWindow;

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->b:Landroid/content/Context;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v5, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lavu;->a:Landroid/widget/PopupWindow;

    .line 106
    new-instance v9, Landroid/graphics/drawable/PaintDrawable;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 107
    .local v9, "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->a:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .end local v5    # "contentView":Landroid/view/View;
    .end local v9    # "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    .end local v11    # "scheduleContentTextView":Lcom/iflytek/base/skin/customView/XTextView;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07001a

    .line 112
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 113
    .local v10, "popupWindowMarginBottom":I
    invoke-virtual/range {p1 .. p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getHeight()I

    move-result v16

    add-int v15, v16, v10

    .line 116
    .local v15, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->a:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->a:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v17

    const/16 v18, 0x0

    neg-int v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->b:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide v22, 0x4059800000000000L    # 102.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {v16 .. v19}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->e:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->f:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x4e20

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lavu;->c:Z

    .line 121
    const-string/jumbo v16, "SpeechAddScheduleGuideManager"

    const-string/jumbo v17, "showFailGuide()"

    invoke-static/range {v16 .. v17}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lavu;->a:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    new-instance v17, Lavu$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lavu$1;-><init>(Lavu;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 135
    invoke-static {}, Lil;->a()Lil;

    move-result-object v16

    const-string/jumbo v17, "com.iflytek.cmcc.IFLY_MANUAL_ADD_SCHEDULE_TIMES"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lil;->b(Ljava/lang/String;I)I

    move-result v8

    .line 136
    .local v8, "manualAddScheduleTimes":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v16

    const-string/jumbo v17, "com.iflytek.cmcc.IFLY_MANUAL_ADD_SCHEDULE_TIMES"

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lil;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 122
    .end local v8    # "manualAddScheduleTimes":I
    .end local v10    # "popupWindowMarginBottom":I
    .end local v15    # "yOffset":I
    :catch_0
    move-exception v6

    .line 123
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v16, "SpeechAddScheduleGuideManager"

    const-string/jumbo v17, "showFailGuide() exception"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_IS_SCHEDULE_ADD_BY_SPEECH"

    invoke-virtual {v4, v5, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "speech_add_schedule_times":I
    if-ne v1, v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_MANUAL_ADD_SCHEDULE_TIMES"

    invoke-virtual {v4, v5, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "manual_add_schedule_times":I
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    move v2, v3

    .line 67
    goto :goto_0
.end method
