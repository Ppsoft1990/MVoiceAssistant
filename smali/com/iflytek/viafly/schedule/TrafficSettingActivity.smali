.class public Lcom/iflytek/viafly/schedule/TrafficSettingActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Landroid/text/TextWatcher;

.field private a:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lcom/iflytek/base/skin/customView/XTextView;

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private f:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private g:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private h:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private i:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private j:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private k:Lcom/iflytek/base/skin/customView/XTextView;

.field private l:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private m:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private n:Lcom/iflytek/base/skin/customView/XTextView;

.field private o:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private p:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private q:Lcom/iflytek/base/skin/customView/XTextView;

.field private r:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private s:Lcom/iflytek/base/skin/customView/XTextView;

.field private t:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private u:Lcom/iflytek/base/skin/customView/XEditText;

.field private v:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private w:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private x:Lcom/iflytek/base/skin/customView/XButton;

.field private y:Lcom/iflytek/base/skin/customView/XButton;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->A:Z

    .line 435
    new-instance v0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$1;-><init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->B:Landroid/text/TextWatcher;

    return-void
.end method

.method private a(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 387
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 389
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateFirstWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateSecondWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateThirdWarnScaleSwitchState(Z)V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V
    .locals 2
    .param p1, "checkBox"    # Lcom/iflytek/base/skin/customView/XCheckBox2;
    .param p2, "textView"    # Lcom/iflytek/base/skin/customView/XTextView;
    .param p3, "check"    # Z
    .param p4, "enable"    # Z

    .prologue
    const v1, 0x7f0a0013

    .line 346
    invoke-virtual {p1, p3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 347
    invoke-virtual {p2, p4}, Lcom/iflytek/base/skin/customView/XTextView;->setEnabled(Z)V

    .line 348
    if-nez p4, :cond_1

    .line 349
    if-eqz p3, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 351
    const v0, 0x7f0201b4

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundResource(I)V

    .line 365
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 354
    const v0, 0x7f0201b3

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 358
    :cond_1
    if-eqz p3, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 360
    const v0, 0x7f0201b6

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 363
    const v0, 0x7f0201b5

    invoke-virtual {p2, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/16 v2, 0xa9

    .line 369
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 370
    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    const/16 v1, 0x48

    const/16 v2, 0xc5

    const/16 v3, 0xa2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setTextColor(I)V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setTextColor(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 409
    const-string/jumbo v0, "TrafficSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "position\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/traffic/warn/WarnJudgeHelper;->getWarnScaleSwitchState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/TrafficSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->A:Z

    return p1
.end method

.method private b()V
    .locals 12

    .prologue
    .line 282
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v6

    .line 283
    .local v6, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v6, :cond_2

    .line 285
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->getTotalTraffic()F

    move-result v5

    .line 288
    .local v5, "totalTraffic":F
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 289
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->t:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 299
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "totalTraffic":F
    :goto_0
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->t:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 301
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getWarnConfigInfo()Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v7

    .line 302
    .local v7, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    const-string/jumbo v9, "TrafficSettingActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " getWarnConfigInfo warnConfigInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 304
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->z:Ljava/util/List;

    .line 305
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->z:Ljava/util/List;

    invoke-virtual {v7}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "midValue":F
    const/4 v3, 0x0

    .line 308
    .local v3, "minValue":F
    const/4 v1, 0x0

    .line 309
    .local v1, "maxValue":F
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->z:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 310
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->z:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;

    .line 311
    .local v8, "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v10

    if-nez v10, :cond_3

    .line 312
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v3

    goto :goto_1

    .line 291
    .end local v1    # "maxValue":F
    .end local v2    # "midValue":F
    .end local v3    # "minValue":F
    .end local v7    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .end local v8    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "totalTraffic":F
    :cond_1
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v9, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u672c\u6708\u6d41\u91cf: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    float-to-int v11, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "M"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 296
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "totalTraffic":F
    :cond_2
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->t:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 313
    .restart local v1    # "maxValue":F
    .restart local v2    # "midValue":F
    .restart local v3    # "minValue":F
    .restart local v7    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .restart local v8    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_3
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 314
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v2

    goto :goto_1

    .line 315
    :cond_4
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getLevel()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 316
    invoke-virtual {v8}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->getValue()F

    move-result v1

    goto :goto_1

    .line 320
    .end local v8    # "warnScale":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
    :cond_5
    const/4 v3, 0x0

    .line 321
    const v2, 0x3dcccccd    # 0.1f

    .line 322
    const/high16 v1, 0x3f000000    # 0.5f

    .line 324
    :cond_6
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u4e0d\u8db3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u63d0\u9192"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u4e0d\u8db3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v3

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u63d0\u9192"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u4e0d\u8db3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u63d0\u9192"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->s:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u603b\u6d41\u91cf\u4e0d\u8db3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u3001"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v2

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u3001"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v11, v3

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%\u65f6\u63d0\u9192"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    .line 329
    .local v0, "isMonthSwitchOpen":Z
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v9, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 330
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v10, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v11

    invoke-direct {p0, v9, v10, v11, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 331
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v10, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v11

    invoke-direct {p0, v9, v10, v11, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 332
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v10, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v11

    invoke-direct {p0, v9, v10, v11, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 342
    .end local v0    # "isMonthSwitchOpen":Z
    .end local v1    # "maxValue":F
    .end local v2    # "midValue":F
    .end local v3    # "minValue":F
    :goto_2
    return-void

    .line 335
    :cond_7
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 336
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 337
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 338
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->l:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 339
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->v:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 340
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->w:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private b(Z)V
    .locals 8
    .param p1, "editable"    # Z

    .prologue
    const v7, 0x7f02006e

    const v6, 0x7f0a0011

    const/4 v5, 0x0

    .line 523
    if-nez p1, :cond_2

    .line 525
    const v2, 0x7f0b07d5

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 526
    const v2, 0x7f0b07e4

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 527
    const v2, 0x7f0b07e7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 528
    const v2, 0x7f0b07ea

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    const v3, 0x7f02010f

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 530
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v1

    .line 531
    .local v1, "monthState":Z
    if-eqz v1, :cond_0

    .line 532
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setImageResource(I)V

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 536
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 537
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 539
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v0

    .line 540
    .local v0, "dayState":Z
    if-eqz v0, :cond_1

    .line 541
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 542
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setImageResource(I)V

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v2, v5}, Lcom/iflytek/base/skin/customView/XEditText;->setEnabled(Z)V

    .line 545
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->setTextColor(I)V

    .line 547
    .end local v0    # "dayState":Z
    .end local v1    # "monthState":Z
    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->d:Lcom/iflytek/base/skin/customView/XImageView;

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 424
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleThreshold()I

    move-result v0

    .line 425
    .local v0, "threshold":I
    if-gtz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getTrafficDailyScheduleLocalThreshold()I

    move-result v0

    .line 427
    if-gtz v0, :cond_0

    .line 428
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 431
    :cond_0
    const-string/jumbo v1, "TrafficSettingActivity"

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

    .line 432
    return v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 487
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664\u6b64\u63d0\u9192\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$3;-><init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 489
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$2;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$2;-><init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;)V

    .line 495
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 502
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 503
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 504
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 507
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 509
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 513
    :cond_0
    const-string/jumbo v0, "\u5df2\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->setResult(I)V

    .line 515
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->finish()V

    .line 516
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 276
    :goto_0
    :sswitch_0
    return-void

    .line 205
    :sswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->finish()V

    goto :goto_0

    .line 210
    :sswitch_2
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v4

    invoke-virtual {v4}, Lzn;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    const-string/jumbo v2, "TrafficSettingActivity"

    const-string/jumbo v3, "open the monthSwitch fail because of unauth , return"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, ""

    invoke-virtual {v2, p0, v5, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 217
    .local v1, "monthState":Z
    :goto_1
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 218
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 220
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {p0, v6}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v6

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 221
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v2

    invoke-direct {p0, v4, v5, v2, v1}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 222
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(I)Z

    move-result v3

    invoke-direct {p0, v2, v4, v3, v1}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    .line 223
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->c()V

    goto :goto_0

    .end local v1    # "monthState":Z
    :cond_1
    move v1, v3

    .line 216
    goto :goto_1

    .line 228
    :sswitch_3
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lzn;->a()Lzn;

    move-result-object v4

    invoke-virtual {v4}, Lzn;->p()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    const-string/jumbo v2, "TrafficSettingActivity"

    const-string/jumbo v3, "open the monthSwitch fail because of unauth , return"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, ""

    invoke-virtual {v2, p0, v5, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 235
    .local v0, "dayState":Z
    :goto_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 236
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Z)V

    .line 237
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 238
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->c()V

    goto/16 :goto_0

    .end local v0    # "dayState":Z
    :cond_3
    move v0, v3

    .line 234
    goto :goto_2

    .line 250
    :sswitch_4
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_3
    invoke-direct {p0, v6, v4}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(IZ)V

    .line 251
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v2

    :cond_4
    invoke-direct {p0, v4, v5, v3, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    goto/16 :goto_0

    :cond_5
    move v4, v3

    .line 250
    goto :goto_3

    .line 255
    :sswitch_5
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    invoke-direct {p0, v3, v4}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(IZ)V

    .line 256
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    move v3, v2

    :cond_6
    invoke-direct {p0, v4, v5, v3, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v4, v3

    .line 255
    goto :goto_4

    .line 260
    :sswitch_6
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_5
    invoke-direct {p0, v2, v4}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(IZ)V

    .line 261
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isChecked()Z

    move-result v6

    if-nez v6, :cond_8

    move v3, v2

    :cond_8
    invoke-direct {p0, v4, v5, v3, v2}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/base/skin/customView/XCheckBox2;Lcom/iflytek/base/skin/customView/XTextView;ZZ)V

    goto/16 :goto_0

    :cond_9
    move v4, v3

    .line 260
    goto :goto_5

    .line 265
    :sswitch_7
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "traffic"

    const-string/jumbo v4, "delete"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e()V

    goto/16 :goto_0

    .line 270
    :sswitch_8
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "traffic"

    const-string/jumbo v4, "add"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f()V

    goto/16 :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0687 -> :sswitch_7
        0x7f0b0688 -> :sswitch_8
        0x7f0b07ce -> :sswitch_1
        0x7f0b07d4 -> :sswitch_0
        0x7f0b07d7 -> :sswitch_2
        0x7f0b07d9 -> :sswitch_4
        0x7f0b07dd -> :sswitch_6
        0x7f0b07e1 -> :sswitch_5
        0x7f0b07e3 -> :sswitch_0
        0x7f0b07e5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 93
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v3, 0x7f03015f

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->setContentView(I)V

    .line 95
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 96
    const v3, 0x7f0b07ce

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 97
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v3, 0x7f0b0687

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->x:Lcom/iflytek/base/skin/customView/XButton;

    .line 99
    const v3, 0x7f0b0688

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->y:Lcom/iflytek/base/skin/customView/XButton;

    .line 100
    const v3, 0x7f0b07d2

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 101
    const v3, 0x7f0b07d3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->c:Lcom/iflytek/base/skin/customView/XTextView;

    .line 102
    const v3, 0x7f0b07d1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 103
    const v3, 0x7f0b07d0

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->t:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 104
    const v3, 0x7f0b07e8

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    .line 105
    const v3, 0x7f0b07d7

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 106
    const v3, 0x7f0b07d4

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 107
    const v3, 0x7f0b07d8

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 108
    const v3, 0x7f0b07e0

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->l:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 109
    const v3, 0x7f0b07dc

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 110
    const v3, 0x7f0b07da

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 111
    const v3, 0x7f0b07e2

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 112
    const v3, 0x7f0b07de

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 113
    const v3, 0x7f0b07d9

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    .line 114
    const v3, 0x7f0b07e1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    .line 115
    const v3, 0x7f0b07dd

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    .line 116
    const v3, 0x7f0b07d6

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->s:Lcom/iflytek/base/skin/customView/XTextView;

    .line 117
    const v3, 0x7f0b07e5

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XCheckBox2;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 118
    const v3, 0x7f0b07e3

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 119
    const v3, 0x7f0b07e6

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->r:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 120
    const v3, 0x7f0b07db

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->v:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 121
    const v3, 0x7f0b07df

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->w:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 124
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v4, "stateList.setting_checkbox_states_new"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 126
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->e:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v4, "stateList.setting_checkbox_states_traffic_setting"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->k:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->j:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v4, "stateList.setting_checkbox_states_traffic_setting"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 132
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->n:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->m:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v4, "stateList.setting_checkbox_states_traffic_setting"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 135
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->q:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->p:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->x:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->y:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v4, "stateList.setting_checkbox_states_new"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->f:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Z)V

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "daylyTrafficLimit":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3, v0}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XEditText;->setSelection(I)V

    .line 166
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    const-string/jumbo v4, "0123456789"

    invoke-static {v4}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 167
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->B:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->b()V

    .line 173
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->c()V

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "need_cover"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 180
    .local v2, "needCover":Z
    invoke-static {v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    if-eqz v2, :cond_2

    .line 182
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->b(Z)V

    .line 183
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->x:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->y:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 193
    :goto_2
    return-void

    .line 141
    .end local v0    # "daylyTrafficLimit":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "needCover":Z
    :cond_0
    const-string/jumbo v3, "TrafficSettingActivity"

    const-string/jumbo v4, "monthFlow layout is hide by gray"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->i:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->o:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->l:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->v:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->w:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 157
    :cond_1
    const-string/jumbo v3, "TrafficSettingActivity"

    const-string/jumbo v4, "dayFlow layout is hide by gray"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->h:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 159
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->r:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 186
    .restart local v0    # "daylyTrafficLimit":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "needCover":Z
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->x:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->y:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_2

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->x:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->y:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v8}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 462
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 464
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "input":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->A:Z

    if-eqz v3, :cond_0

    .line 467
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 468
    .local v2, "tmp":I
    if-lez v2, :cond_0

    .line 469
    const-string/jumbo v3, "TrafficSettingActivity"

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

    .line 470
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v2    # "tmp":I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->A:Z

    .line 478
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->B:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 479
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TrafficSettingActivity"

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
    .line 455
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 457
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->u:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 458
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method
