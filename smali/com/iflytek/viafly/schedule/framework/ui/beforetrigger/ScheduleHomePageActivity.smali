.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleHomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavx;
.implements Lavy;
.implements Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field private m:Lauj;

.field private n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

.field private q:Lcom/iflytek/viafly/smartschedule/ScheduleView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "image"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x0

    .line 551
    const v3, 0x7f0b05de

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 552
    const-string/jumbo v0, "smartSchedule"

    .line 556
    .local v0, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 557
    .local v1, "visible":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 558
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    const v2, 0x7f02010b

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :goto_2
    return-void

    .line 554
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "visible":Z
    :cond_0
    const-string/jumbo v0, "schedule"

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move v1, v2

    .line 556
    goto :goto_1

    .line 563
    .restart local v1    # "visible":Z
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    const v2, 0x7f020204

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "open"

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V
    .locals 3
    .param p1, "category"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 571
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v0, p1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    :goto_1
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()V
    .locals 0

    .prologue
    .line 206
    invoke-static {p0}, Lauu;->f(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 230
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v2

    invoke-virtual {v2, p0}, Lauu;->c(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a:Ljava/util/List;

    .line 231
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 232
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 233
    .local v1, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;

    invoke-direct {v0, p0, v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lavx;)V

    .line 234
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 237
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleTodoItem;
    .end local v1    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    .line 238
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 239
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d()V

    .line 240
    return-void
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 369
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleList()Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "smartDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 371
    .local v0, "i":I
    if-ne v9, v0, :cond_1

    .line 373
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;

    invoke-direct {v1, p0, v9, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;-><init>(Landroid/content/Context;ILavx;)V

    .line 375
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    const-string/jumbo v3, "image.ic_smart_card_umbrella"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setLogo(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v3, "\u5e26\u4f1e\u63d0\u9192"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTitle(Ljava/lang/String;)V

    .line 377
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTag(Ljava/lang/Object;)V

    .line 378
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 380
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    :cond_1
    if-ne v8, v0, :cond_2

    .line 382
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;

    invoke-direct {v1, p0, v8, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;-><init>(Landroid/content/Context;ILavx;)V

    .line 384
    .restart local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    const-string/jumbo v3, "image.ic_smart_card_cooling"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setLogo(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v3, "\u964d\u6e29\u63d0\u9192"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTitle(Ljava/lang/String;)V

    .line 386
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTag(Ljava/lang/Object;)V

    .line 387
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 400
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    :cond_2
    if-ne v6, v0, :cond_4

    .line 402
    invoke-static {}, Lmz;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_0

    .line 406
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;

    invoke-direct {v1, p0, v6, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;-><init>(Landroid/content/Context;ILavx;)V

    .line 407
    .restart local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    const-string/jumbo v3, "image.ic_smart_card_flow"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setLogo(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v3, "\u6d41\u91cf\u63d0\u9192"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTitle(Ljava/lang/String;)V

    .line 409
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 412
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    :cond_4
    if-ne v7, v0, :cond_0

    .line 414
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;

    invoke-direct {v1, p0, v7, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;-><init>(Landroid/content/Context;ILavx;)V

    .line 416
    .restart local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    const-string/jumbo v3, "image.ic_smart_card_hotevent"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setLogo(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v3, "\u70ed\u95e8\u4e8b\u4ef6\u63d0\u9192"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTitle(Ljava/lang/String;)V

    .line 418
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setTag(Ljava/lang/Object;)V

    .line 419
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 423
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
    :cond_5
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    .line 424
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isScheduleSwitchOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_4

    .line 485
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 491
    :cond_4
    :goto_0
    return-void

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 495
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 502
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->isForbiddenGray(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    const v4, 0x7f0b05a6

    .line 532
    const v2, 0x7f0b05a5

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->l:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 533
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    .line 534
    .local v1, "perssmionContent":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    const-string/jumbo v0, "<font color=\"#333333\" size=\"28\">\u4e3a\u786e\u4fdd\u63d0\u9192\u6309\u65f6\u54cd\u94c3\uff0c\u8bf7\u5f00\u542f\u76f8\u5173\u6743\u9650\uff0c</font><font color=\"#4282f7\" size=\"28\"><u>\u70b9\u51fb\u8fdb\u5165</u></font>"

    .line 536
    .local v0, "html":Ljava/lang/String;
    invoke-static {}, Lhl;->k()I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 537
    const-string/jumbo v0, "<font color=\"#333333\" size=\"28\">\u4e3a\u786e\u4fdd\u63d0\u9192\u6b63\u5e38\u4f7f\u7528\uff0c\u8bf7\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650\uff0c</font><font color=\"#4282f7\" size=\"28\"><u>\u53bb\u5f00\u542f</u></font>"

    .line 539
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lrj;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->l:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 545
    :goto_0
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    const v2, 0x7f0b05a7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    return-void

    .line 543
    :cond_1
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->k()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "ScheduleHomePageActivity"

    const-string/jumbo v1, "setTitle()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 145
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0b0576

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;I)V
    .locals 3
    .param p1, "category"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .param p2, "id"    # I

    .prologue
    .line 218
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne p1, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, "targetView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 225
    :goto_0
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    .line 226
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v1

    invoke-virtual {v1, p0}, Lauu;->c(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a:Ljava/util/List;

    .line 227
    return-void

    .line 222
    .end local v0    # "targetView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 223
    .restart local v0    # "targetView":Landroid/view/View;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;I)V
    .locals 10
    .param p1, "category"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .param p2, "id"    # I

    .prologue
    .line 260
    const-string/jumbo v8, "ScheduleHomePageActivity"

    const-string/jumbo v9, "ScheduleDeleteGuide OnShow"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    if-eqz v8, :cond_1

    .line 262
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8}, Lauj;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    const-string/jumbo v8, "ScheduleHomePageActivity"

    const-string/jumbo v9, "mScheduleDeleteGuide is Showing."

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8}, Lauj;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    .line 273
    :cond_1
    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v5

    .line 274
    .local v5, "width":I
    invoke-static {p0}, Lhl;->e(Landroid/content/Context;)I

    move-result v1

    .line 275
    .local v1, "height":I
    new-instance v8, Lauj;

    invoke-direct {v8, p0, v5, v1}, Lauj;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    .line 276
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, p1}, Lauj;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;)V

    .line 277
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, p2}, Lauj;->a(I)V

    .line 278
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, p0}, Lauj;->a(Lavy;)V

    .line 281
    sget-object v8, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne p1, v8, :cond_2

    .line 282
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 286
    .local v4, "targetView":Landroid/view/View;
    :goto_1
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 287
    .local v3, "location":[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    const/4 v8, 0x0

    aget v6, v3, v8

    .line 289
    .local v6, "x":I
    const/4 v8, 0x1

    aget v7, v3, v8

    .line 290
    .local v7, "y":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v2, v8, v9

    .line 292
    .local v2, "itemHeight":I
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, v7}, Lauj;->d(I)V

    .line 293
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, v6}, Lauj;->c(I)V

    .line 294
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, v2}, Lauj;->b(I)V

    .line 296
    :try_start_1
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->m:Lauj;

    invoke-virtual {v8, v4}, Lauj;->a(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :goto_2
    return-void

    .line 266
    .end local v1    # "height":I
    .end local v2    # "itemHeight":I
    .end local v3    # "location":[I
    .end local v4    # "targetView":Landroid/view/View;
    .end local v5    # "width":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScheduleHomePageActivity"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "height":I
    .restart local v5    # "width":I
    :cond_2
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "targetView":Landroid/view/View;
    goto :goto_1

    .line 297
    .restart local v2    # "itemHeight":I
    .restart local v3    # "location":[I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :catch_1
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScheduleHomePageActivity"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 592
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 593
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->overridePendingTransition(II)V

    .line 594
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x30000000

    const/16 v7, 0x17

    const/4 v6, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 87
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Laun;->a(Landroid/content/Context;)V

    .line 90
    const-string/jumbo v4, "is_from_main_schedule_view"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string/jumbo v4, "operation_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v4, "schedule_type"

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(I)V

    goto :goto_0

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->finish()V

    goto :goto_0

    .line 100
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f()V

    goto :goto_0

    .line 106
    .end local v1    # "intent2":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v4, "ScheduleHomePageActivity"

    const-string/jumbo v5, "click permission close button"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLOSED"

    invoke-virtual {v4, v5, v6}, Lil;->a(Ljava/lang/String;Z)V

    .line 108
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->l:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 109
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->m()V

    .line 110
    const-string/jumbo v3, "\u53ef\u5728\u7075\u7280\u8bbe\u7f6e\u4e2d\u8fdb\u884c\u6743\u9650\u7ba1\u7406"

    .line 111
    .local v3, "tip":Ljava/lang/String;
    invoke-static {}, Lhl;->k()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 112
    const-string/jumbo v3, "\u53ef\u5728\u7cfb\u7edf\u8bbe\u7f6e>\u5e94\u7528>\u53f3\u4e0a\u89d2\u8bbe\u7f6e>\u5176\u4ed6\u5e94\u7528\u7684\u4e0a\u5c42\u663e\u793a>\u7075\u7280\u4e2d\u5f00\u542f"

    .line 114
    :cond_0
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 117
    .end local v3    # "tip":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "ScheduleHomePageActivity"

    const-string/jumbo v5, "click permission layout body"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lhl;->k()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 119
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v4

    invoke-virtual {v4}, Lpb;->c()V

    goto/16 :goto_0

    .line 121
    :cond_1
    invoke-static {p0}, Lrj;->d(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->l()V

    goto/16 :goto_0

    .line 126
    :sswitch_5
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 129
    :sswitch_6
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 132
    :sswitch_7
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleAddListActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v2, "intent3":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g()V

    goto/16 :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0237 -> :sswitch_1
        0x7f0b0576 -> :sswitch_2
        0x7f0b05a6 -> :sswitch_4
        0x7f0b05a7 -> :sswitch_3
        0x7f0b05aa -> :sswitch_0
        0x7f0b05dc -> :sswitch_7
        0x7f0b0603 -> :sswitch_6
        0x7f0b0605 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v6, 0x7f030104

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->a()V

    .line 154
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 155
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "com.iflytek.cmcc.ACTION_LUANCH_HOME_TO_SCHEDULE_EDIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const-string/jumbo v6, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 162
    .local v5, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v4, "intent1":Landroid/content/Intent;
    const/high16 v6, 0x14000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v6, "operation_type"

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v6, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v6, "GoChannelWhenFinishFlag"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "intent1":Landroid/content/Intent;
    .end local v5    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    :goto_1
    const v6, 0x7f0b05db

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->b:Landroid/widget/LinearLayout;

    .line 175
    const v6, 0x7f0b0603

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->c:Landroid/widget/LinearLayout;

    .line 176
    const v6, 0x7f0b05a8

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->d:Landroid/widget/LinearLayout;

    .line 177
    const v6, 0x7f0b0604

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->e:Landroid/widget/ImageView;

    .line 178
    const v6, 0x7f0b05dd

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->f:Landroid/widget/LinearLayout;

    .line 179
    const v6, 0x7f0b0605

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->g:Landroid/widget/LinearLayout;

    .line 180
    const v6, 0x7f0b05de

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h:Landroid/widget/LinearLayout;

    .line 181
    const v6, 0x7f0b0606

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->i:Landroid/widget/ImageView;

    .line 182
    const v6, 0x7f0b0607

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->j:Landroid/widget/LinearLayout;

    .line 183
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->c:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v6, 0x7f0b05dc

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->k:Landroid/widget/ImageView;

    .line 188
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->h()V

    .line 195
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->b()V

    .line 197
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->c()V

    .line 199
    invoke-static {p0}, Laup;->b(Landroid/content/Context;)V

    .line 201
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v6

    const-string/jumbo v7, "FT90206"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v6

    const-string/jumbo v7, "LX_100127"

    invoke-virtual {v6, v7}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "intent1":Landroid/content/Intent;
    .restart local v5    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "ScheduleHomePageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Nothing available to handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 509
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 511
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->p:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 515
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->o:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 523
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->n:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->destory()V

    .line 527
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->q:Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .line 529
    :cond_3
    return-void
.end method

.method public onItemClick(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 453
    if-ne v4, p1, :cond_1

    .line 454
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    if-ne v3, p1, :cond_2

    .line 456
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    goto :goto_0

    .line 461
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 465
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    if-ne v2, p1, :cond_0

    .line 466
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "ScheduleHomePageActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 246
    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->a()V

    .line 247
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->c()V

    .line 249
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;->e()V

    .line 256
    return-void
.end method

.method public onSwitchClick(Lcom/iflytek/viafly/smartschedule/ScheduleView;IZ)V
    .locals 7
    .param p1, "view"    # Lcom/iflytek/viafly/smartschedule/ScheduleView;
    .param p2, "type"    # I
    .param p3, "status"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 429
    const/4 v0, 0x6

    if-ne v0, p2, :cond_2

    .line 430
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    const/4 v4, 0x6

    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 447
    :cond_0
    :goto_1
    if-nez p3, :cond_a

    :goto_2
    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->setButtonStatue(Z)V

    .line 448
    return-void

    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    .line 431
    :cond_2
    if-ne v6, p2, :cond_4

    .line 432
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    if-nez p3, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v6, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 437
    :cond_4
    if-ne v4, p2, :cond_8

    .line 438
    if-nez p3, :cond_5

    .line 440
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v3, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v0, v3, v1}, Lil;->a(Ljava/lang/String;Z)V

    .line 442
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    if-nez p3, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v4, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 443
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    if-nez p3, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v3, v1, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 442
    goto :goto_4

    :cond_7
    move v0, v2

    .line 443
    goto :goto_5

    .line 444
    :cond_8
    if-ne v5, p2, :cond_0

    .line 445
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v3

    if-nez p3, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v5, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move v1, v2

    .line 447
    goto :goto_2
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
