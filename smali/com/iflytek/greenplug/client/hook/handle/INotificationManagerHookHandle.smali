.class public Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "INotificationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$n;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$m;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$l;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$k;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSystemLayoutResIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->findFisrtNotificationIndex([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginPackage(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->hackNotification(Ljava/lang/String;Landroid/app/Notification;)V

    return-void
.end method

.method private createViewFromRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/view/View;
    .locals 18
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "rvt"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .prologue
    .line 441
    const/4 v5, 0x0

    .line 442
    .local v5, "height_default_dp":I
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 464
    :goto_0
    const/4 v9, 0x0

    .line 465
    .local v9, "systemDimenId":I
    const/4 v2, 0x0

    .line 467
    .local v2, "contextSystemUI":Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    const-string/jumbo v16, "com.android.systemui"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 468
    const-string/jumbo v6, ""

    .line 469
    .local v6, "height_name":Ljava/lang/String;
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 481
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "dimen"

    const-string/jumbo v17, "com.android.systemui"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 485
    .end local v6    # "height_name":Ljava/lang/String;
    :goto_2
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 486
    .local v8, "isOldAPPinN":Ljava/lang/Boolean;
    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 487
    :cond_0
    int-to-float v15, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->dp2px(F)I

    move-result v4

    .line 495
    .local v4, "height":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    const-string/jumbo v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 496
    .local v14, "windowsManager":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v7, 0x1

    .line 497
    .local v7, "isLandscape":Z
    :goto_5
    if-eqz v7, :cond_7

    .line 498
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 503
    .local v13, "width":I
    :goto_6
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 504
    .local v10, "percent":D
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$1;->b:[I

    invoke-static {}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getInstance()Lcom/iflytek/greenplug/common/utils/OSUtils;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getOS()Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_2

    .line 532
    :cond_1
    :goto_7
    :pswitch_0
    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-int v13, v0

    .line 535
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 536
    .local v12, "view":Landroid/view/View;
    const/high16 v15, 0x40000000    # 2.0f

    .line 537
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    .line 538
    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 536
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/view/View;->measure(II)V

    .line 539
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0, v13, v4}, Landroid/view/View;->layout(IIII)V

    .line 540
    return-object v12

    .line 444
    .end local v2    # "contextSystemUI":Landroid/content/Context;
    .end local v4    # "height":I
    .end local v7    # "isLandscape":Z
    .end local v8    # "isOldAPPinN":Ljava/lang/Boolean;
    .end local v9    # "systemDimenId":I
    .end local v10    # "percent":D
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .end local v14    # "windowsManager":Landroid/view/WindowManager;
    :pswitch_1
    const/16 v5, 0x19

    .line 445
    goto/16 :goto_0

    .line 448
    :pswitch_2
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 449
    const/16 v5, 0x40

    goto/16 :goto_0

    .line 451
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 453
    const/16 v5, 0x40

    goto/16 :goto_0

    .line 455
    :cond_3
    const/16 v5, 0x5c

    .line 458
    goto/16 :goto_0

    .line 460
    :pswitch_3
    const/16 v5, 0x100

    goto/16 :goto_0

    .line 471
    .restart local v2    # "contextSystemUI":Landroid/content/Context;
    .restart local v6    # "height_name":Ljava/lang/String;
    .restart local v9    # "systemDimenId":I
    :pswitch_4
    :try_start_1
    const-string/jumbo v6, "status_bar_height"

    .line 472
    goto/16 :goto_1

    .line 475
    :pswitch_5
    const-string/jumbo v6, "notification_min_height"

    .line 476
    goto/16 :goto_1

    .line 478
    :pswitch_6
    const-string/jumbo v6, "notification_max_height"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 482
    .end local v6    # "height_name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 483
    .local v3, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "createViewFromRemoteViews error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 485
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 489
    .restart local v8    # "isOldAPPinN":Ljava/lang/Boolean;
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "height":I
    goto/16 :goto_4

    .line 496
    .restart local v14    # "windowsManager":Landroid/view/WindowManager;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 500
    .restart local v7    # "isLandscape":Z
    :cond_7
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v13

    .restart local v13    # "width":I
    goto/16 :goto_6

    .line 507
    .restart local v10    # "percent":D
    :pswitch_7
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 508
    const-wide v10, 0x3fea8f5c28f5c28fL    # 0.83

    goto/16 :goto_7

    .line 513
    :pswitch_8
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 514
    const-wide v10, 0x3fee666666666666L    # 0.95

    goto/16 :goto_7

    .line 519
    :pswitch_9
    const-wide v10, 0x3fedc28f5c28f5c3L    # 0.93

    .line 520
    goto/16 :goto_7

    .line 525
    :pswitch_a
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 526
    const-wide v10, 0x3feeb851eb851eb8L    # 0.96

    goto/16 :goto_7

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 504
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private dp2px(F)I
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    .line 433
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 434
    .local v0, "mScale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method private drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 843
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 844
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 845
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 852
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .line 847
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 848
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 849
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 850
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 849
    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 851
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 847
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private findFisrtNotificationIndex([Ljava/lang/Object;)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 179
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 181
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 186
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 180
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findIntent(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 599
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;>;"
    const/4 v0, 0x0

    .line 600
    .local v0, "maxArea":I
    const/4 v1, 0x0

    .line 601
    .local v1, "maxIntent":Landroid/app/PendingIntent;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;

    .line 602
    .local v2, "rectInfo":Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;
    iget-object v5, v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;->a:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 603
    .local v3, "size":I
    if-le v3, v0, :cond_0

    .line 604
    move v0, v3

    .line 605
    iget-object v1, v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;->b:Landroid/app/PendingIntent;

    goto :goto_0

    .line 608
    .end local v2    # "rectInfo":Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;
    .end local v3    # "size":I
    :cond_1
    return-object v1
.end method

.method private getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .locals 11
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 636
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .line 638
    .local v6, "mActionsObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v9, "mActions"

    invoke-static {p1, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 643
    .end local v6    # "mActionsObj":Ljava/lang/Object;
    :goto_0
    instance-of v9, v6, Ljava/util/Collection;

    if-eqz v9, :cond_1

    move-object v5, v6

    .line 644
    check-cast v5, Ljava/util/Collection;

    .line 645
    .local v5, "mActions":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 646
    .local v8, "one":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 647
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v9, "SetOnClickPendingIntent"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 649
    const/4 v3, 0x0

    .line 650
    .local v3, "id":I
    const/4 v4, 0x0

    .line 652
    .local v4, "intent":Landroid/app/PendingIntent;
    :try_start_1
    const-string/jumbo v9, "viewId"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 653
    const-string/jumbo v9, "pendingIntent"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/PendingIntent;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "id":I
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "mActions":Ljava/util/Collection;
    .end local v8    # "one":Ljava/lang/Object;
    .restart local v6    # "mActionsObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "mActionsObj":Ljava/lang/Object;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v3    # "id":I
    .restart local v4    # "intent":Landroid/app/PendingIntent;
    .restart local v5    # "mActions":Ljava/util/Collection;
    .restart local v8    # "one":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 655
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 663
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "id":I
    .end local v4    # "intent":Landroid/app/PendingIntent;
    .end local v5    # "mActions":Ljava/util/Collection;
    .end local v8    # "one":Ljava/lang/Object;
    :cond_1
    return-object v7
.end method

.method private getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 612
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 613
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 614
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 615
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 616
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 617
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    .line 618
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 620
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I
    .locals 5
    .param p1, "pluginPkg"    # Ljava/lang/String;
    .param p2, "iconType"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    .prologue
    .line 674
    const-string/jumbo v2, "."

    const-string/jumbo v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "iconName":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$1;->c:[I

    invoke-virtual {p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 685
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 686
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 688
    const-string/jumbo v0, "gp_default_icon"

    .line 689
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 692
    :cond_0
    return v1

    .line 679
    .end local v1    # "resId":I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_small"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    goto :goto_0

    .line 682
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPluginPackage(Landroid/app/Notification;)Ljava/lang/String;
    .locals 13
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/16 v12, 0x17

    .line 308
    const/4 v7, 0x0

    .line 309
    .local v7, "pluginPkg":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v8, v7

    .line 391
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .local v8, "pluginPkg":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 313
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_0
    iget-object v10, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 314
    iget-object v10, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 315
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_2

    .line 319
    iget-object v10, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 320
    iget-object v10, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 321
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 324
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_3

    .line 325
    iget-object v10, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 326
    iget-object v10, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 327
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 330
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4

    .line 331
    iget-object v10, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 332
    iget-object v10, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 333
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 337
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_5

    .line 338
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 339
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_5

    .line 341
    :try_start_0
    const-string/jumbo v10, "mString1"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 342
    .local v6, "mString1Obj":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 343
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 344
    .local v5, "mString1":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_5

    .line 345
    move-object v7, v5

    move-object v8, v7

    .line 346
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 349
    .end local v5    # "mString1":Ljava/lang/String;
    .end local v6    # "mString1Obj":Ljava/lang/Object;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "get smallIcon package fail"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_5
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_6

    .line 356
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 357
    .restart local v3    # "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_6

    .line 359
    :try_start_1
    const-string/jumbo v10, "mString1"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 360
    .restart local v6    # "mString1Obj":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 361
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 362
    .restart local v5    # "mString1":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_6

    .line 363
    move-object v7, v5

    move-object v8, v7

    .line 364
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 367
    .end local v5    # "mString1":Ljava/lang/String;
    .end local v6    # "mString1Obj":Ljava/lang/Object;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 368
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "get largeIcon package fail"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_6
    :try_start_2
    const-string/jumbo v10, "extras"

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 375
    .local v4, "mExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    if-nez v10, :cond_9

    .line 376
    :cond_7
    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "mExtras or mExtras.keySet() is null"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "mExtras":Landroid/os/Bundle;
    :cond_8
    :goto_1
    move-object v8, v7

    .line 391
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 378
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v4    # "mExtras":Landroid/os/Bundle;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 379
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_a

    .line 380
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 381
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 382
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v7

    .line 383
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 388
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "mExtras":Landroid/os/Bundle;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 389
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getPluginNotification error"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getResIdByName(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .local v0, "integer":Ljava/lang/Integer;
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    .end local v0    # "integer":Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private hackNotification(Ljava/lang/String;Landroid/app/Notification;)V
    .locals 11
    .param p1, "pluginPkg"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 714
    if-eqz p2, :cond_7

    .line 715
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hackNotification begin, pluginPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->notificationToString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    invoke-direct {p0, p1, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v8

    iput v8, p2, Landroid/app/Notification;->icon:I

    .line 719
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    .line 720
    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 721
    .local v7, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_0

    .line 722
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 723
    .local v5, "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v8, "mSmallIcon"

    const/4 v9, 0x1

    invoke-static {p2, v8, v5, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 725
    const-string/jumbo v8, "icon"

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p2, v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 728
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    invoke-virtual {p2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 729
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_1

    .line 730
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->LARGE:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 731
    .restart local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v8, "mLargeIcon"

    const/4 v9, 0x1

    invoke-static {p2, v8, v5, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 735
    .end local v3    # "largeIcon":Landroid/graphics/drawable/Icon;
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_2

    .line 736
    iget-object v8, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->shouldReplaceRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 742
    :cond_2
    :goto_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    .line 743
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->shouldReplaceRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 745
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v8

    iget-object v9, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 746
    const/4 v8, 0x0

    iput-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 754
    :cond_3
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    .line 755
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->shouldReplaceRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 756
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->replaceRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 761
    :cond_4
    :goto_2
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->shouldReplaceRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 762
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->replaceRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 769
    :goto_3
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_6

    .line 770
    const-string/jumbo v8, "extras"

    const/4 v9, 0x1

    invoke-static {p2, v8, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 771
    .local v4, "mExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    if-nez v8, :cond_d

    .line 772
    :cond_5
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "mExtras or mExtras.keySet() is null"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v4    # "mExtras":Landroid/os/Bundle;
    :cond_6
    :goto_4
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hackNotification end, pluginPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->notificationToString(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_7
    return-void

    .line 739
    :cond_8
    iget-object v8, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->hackRemoteViews(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 748
    :cond_9
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->replaceRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 751
    :cond_a
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->hackRemoteViews(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 758
    :cond_b
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->hackRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_2

    .line 764
    :cond_c
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->hackRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_3

    .line 774
    .restart local v4    # "mExtras":Landroid/os/Bundle;
    :cond_d
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 775
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_f

    .line 776
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 777
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 778
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 781
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_f
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_e

    .line 782
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_e

    .line 783
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 784
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v2, :cond_e

    .line 785
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    invoke-direct {p0, p1, v10}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 786
    .restart local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 793
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v4    # "mExtras":Landroid/os/Bundle;
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "fix mExtras error"

    invoke-static {v8, v9, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private hackRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 20
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 218
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 220
    sget-object v17, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 221
    const-string/jumbo v17, "mActions"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 222
    .local v12, "mActionsObj":Ljava/lang/Object;
    instance-of v0, v12, Ljava/util/Collection;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object v11, v12

    .line 223
    check-cast v11, Ljava/util/Collection;

    .line 224
    .local v11, "mActions":Ljava/util/Collection;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "aPackage":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginContext(Ljava/lang/String;)Landroid/app/Application;

    move-result-object v15

    .line 226
    .local v15, "pluginContent":Landroid/app/Application;
    if-eqz v15, :cond_6

    .line 227
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 228
    .local v10, "iterable":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 230
    .local v5, "TextViewDrawableActionClass":Ljava/lang/Class;
    :try_start_0
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 231
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-class v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "$TextViewDrawableAction"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 235
    :cond_0
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-class v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "$ReflectionAction"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 236
    .local v4, "ReflectionActionClass":Ljava/lang/Class;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 237
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 238
    .local v7, "action":Ljava/lang/Object;
    invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 239
    const-string/jumbo v17, "methodName"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 241
    .local v13, "methodName":Ljava/lang/String;
    const-string/jumbo v17, "setImageResource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 242
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "BITMAP"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 243
    .local v3, "BITMAP":Ljava/lang/Object;
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 244
    .local v16, "resId":I
    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 245
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 246
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string/jumbo v17, "methodName"

    const-string/jumbo v18, "setImageBitmap"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    .end local v3    # "BITMAP":Ljava/lang/Object;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "resId":I
    :cond_2
    const-string/jumbo v17, "setImageURI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 251
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 252
    :cond_3
    const-string/jumbo v17, "setLabelFor"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 253
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 254
    :cond_4
    const-string/jumbo v17, "setImageIcon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 255
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 256
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Icon;

    .line 257
    .local v9, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v9, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getPluginIconResId(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$IconType;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 259
    .local v14, "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v14}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 263
    .end local v9    # "icon":Landroid/graphics/drawable/Icon;
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v14    # "newIcon":Landroid/graphics/drawable/Icon;
    :cond_5
    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 264
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 276
    .end local v4    # "ReflectionActionClass":Ljava/lang/Class;
    .end local v5    # "TextViewDrawableActionClass":Ljava/lang/Class;
    .end local v6    # "aPackage":Ljava/lang/String;
    .end local v7    # "action":Ljava/lang/Object;
    .end local v10    # "iterable":Ljava/util/Iterator;
    .end local v11    # "mActions":Ljava/util/Collection;
    .end local v12    # "mActionsObj":Ljava/lang/Object;
    .end local v15    # "pluginContent":Landroid/app/Application;
    :cond_6
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 277
    const-string/jumbo v17, "mApplication"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_7
    :goto_2
    return-void

    .line 279
    :cond_8
    const-string/jumbo v17, "mPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 233
    .restart local v5    # "TextViewDrawableActionClass":Ljava/lang/Class;
    .restart local v6    # "aPackage":Ljava/lang/String;
    .restart local v10    # "iterable":Ljava/util/Iterator;
    .restart local v11    # "mActions":Ljava/util/Collection;
    .restart local v12    # "mActionsObj":Ljava/lang/Object;
    .restart local v15    # "pluginContent":Landroid/app/Application;
    :catch_0
    move-exception v17

    goto/16 :goto_0
.end method

.method private static init1()V
    .locals 10

    .prologue
    .line 129
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$layout"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 131
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 133
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 136
    .local v4, "id":I
    sget-object v7, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .end local v4    # "id":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    sget-object v7, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read com.android.internal.R$layout."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "read com.android.internal.R$layout"

    invoke-static {v5, v6, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private notificationToString(Landroid/app/Notification;)Ljava/lang/String;
    .locals 7
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x10

    .line 802
    const/4 v2, 0x0

    .line 804
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 839
    :goto_0
    return-object v4

    .line 808
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 809
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", tickerView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_2

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", bigContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", headsUpContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    .line 821
    const-string/jumbo v4, "extras"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 822
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_7

    .line 823
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", extras:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", notification.icon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", smallIcon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", largeIcon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move-object v2, v3

    .line 839
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 825
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "mExtras":Landroid/os/Bundle;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", extras:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 835
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 836
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_3
    sget-object v4, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "notificationToString error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private offsetViewRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 577
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 573
    .local v0, "viewParent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->offsetViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private replaceRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "rvOld"    # Landroid/widget/RemoteViews;
    .param p2, "rvt"    # Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .prologue
    const/4 v6, 0x1

    .line 402
    if-nez p1, :cond_1

    .line 403
    const/4 v3, 0x0

    .line 429
    :cond_0
    :goto_0
    return-object v3

    .line 407
    :cond_1
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    if-ne v4, p2, :cond_2

    sget v4, Lcom/iflytek/greenplug/R$layout;->notification_big:I

    :goto_1
    invoke-direct {v3, v5, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 411
    .local v3, "rvNew":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->createViewFromRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/view/View;

    move-result-object v2

    .line 412
    .local v2, "oldView":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 413
    const/high16 v4, 0x100000

    invoke-virtual {v2, v4}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 415
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    .local v0, "bmp":Landroid/graphics/Bitmap;
    sget v4, Lcom/iflytek/greenplug/R$id;->ivContent:I

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 418
    sget v4, Lcom/iflytek/greenplug/R$id;->flAll:I

    const-string/jumbo v5, "setBackgroundColor"

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 421
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object v1

    .line 422
    .local v1, "clickIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 426
    invoke-direct {p0, v3, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->createViewFromRemoteViews(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;)Landroid/view/View;

    move-result-object v4

    .line 423
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->setPendingIntents(Ljava/util/Map;Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 407
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "clickIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .end local v2    # "oldView":Landroid/view/View;
    .end local v3    # "rvNew":Landroid/widget/RemoteViews;
    :cond_2
    sget v4, Lcom/iflytek/greenplug/R$layout;->notification:I

    goto :goto_1
.end method

.method private setPendingIntents(Ljava/util/Map;Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "oldView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "intents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 550
    .local v3, "set":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 552
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 553
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 554
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 556
    invoke-direct {p0, v4, v2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->offsetViewRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 557
    new-instance v6, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    invoke-direct {v6, p0, v2, v5}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, p3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 563
    check-cast p3, Landroid/view/ViewGroup;

    .end local p3    # "newView":Landroid/view/View;
    invoke-direct {p0, p2, p3, v1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->setPendingIntentsByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 565
    :cond_2
    return-void
.end method

.method private setPendingIntentsByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 7
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 581
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 582
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 583
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 584
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "v":Landroid/view/View;
    invoke-direct {p0, p1, v4, p3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->setPendingIntentsByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 581
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 586
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 587
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 588
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 589
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 590
    invoke-direct {p0, v3, p3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->findIntent(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 591
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 596
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private shouldReplaceRemoteViews(Landroid/widget/RemoteViews;)Z
    .locals 6
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_0

    .line 287
    :try_start_0
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "remoteViews is null, shouldReplaceRemoteViews false"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return v1

    .line 289
    :cond_0
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sSystemLayoutResIds:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "system contains layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", shouldReplaceRemoteViews false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "shouldReplaceRemoteViews error,  shouldReplaceRemoteViews"

    invoke-static {v1, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 303
    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "shouldReplaceRemoteViews true"

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    .line 299
    goto :goto_0
.end method


# virtual methods
.method public getHookedMethodHandler(Ljava/lang/reflect/Method;)Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method name is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->init1()V

    .line 72
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enqueueNotification"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$h;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "cancelNotification"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$e;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "cancelAllNotifications"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$d;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enqueueToast"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$k;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$k;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "cancelToast"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$g;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enqueueNotificationWithTag"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$i;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enqueueNotificationWithTagPriority"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "cancelNotificationWithTag"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$f;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setNotificationsEnabledForPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$n;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$n;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "areNotificationsEnabledForPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$c;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "enqueueToastUnrepeated"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$l;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$l;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getInstance()Lcom/iflytek/greenplug/common/utils/OSUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getOS()Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    move-result-object v0

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeEdgeNotification"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$m;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$m;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method
