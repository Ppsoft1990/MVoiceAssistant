.class public Lcom/iflytek/viafly/homepage/LxHomeMainView;
.super Landroid/widget/FrameLayout;
.source "LxHomeMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/LxHomeMainView$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private C:J

.field private D:I

.field private final E:I

.field private final F:I

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/LinearLayout;

.field private I:Laic;

.field private final J:I

.field private K:Laik;

.field public final a:I

.field b:Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler;

.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Runnable;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajl;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private k:Landroid/view/View;

.field private l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

.field private m:Landroid/content/Context;

.field private n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

.field private o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field private p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field private q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field private r:Laih;

.field private s:Z

.field private t:Z

.field private final u:I

.field private final v:I

.field private w:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    .line 135
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->s:Z

    .line 137
    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t:Z

    .line 140
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->u:I

    .line 142
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->v:I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->z:Ljava/util/List;

    .line 151
    const/16 v0, 0xa

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    .line 153
    iput v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->E:I

    .line 154
    iput v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->F:I

    .line 156
    iput v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a:I

    .line 163
    iput v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->J:I

    .line 1074
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->K:Laik;

    .line 1126
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$5;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->b:Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler;

    .line 1203
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeMainView$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$6;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c:Ljava/lang/Runnable;

    .line 1212
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$7;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->d:Ljava/lang/Runnable;

    .line 169
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    .line 170
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1467
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "show bind mobile window"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1475
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .line 1476
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u7ed1\u5b9a\u624b\u673a\u53f7\u7ed9\u4f60\u66f4\u667a\u80fd\u7684\u8d34\u5fc3\u670d\u52a1\uff01"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4ee5\u540e\u518d\u8bf4"

    new-instance v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$2;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1477
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53bb\u7ed1\u5b9a"

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v3, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1483
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    .line 1499
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 1500
    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 1501
    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1505
    sget-object v0, Lcom/iflytek/viafly/HomeRootView;->a:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/HomeRootView;->a:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1508
    :cond_0
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "show not login window"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1516
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .line 1517
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    const-string/jumbo v1, "\u60a8\u8fd8\u672a\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u5b8c\u6210\u767b\u5f55\uff0c\u521b\u5efa\u4e2a\u6027\u5316\u7075\u7280\uff0c\u8fd8\u6709\u8d85\u591a\u54aa\u5495\u5e01\u8d60\u9001\u54e6~"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u4e86\uff0c\u8c22\u8c22"

    new-instance v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$4;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$4;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1518
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53bb\u767b\u5f55"

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v3, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1524
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1532
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 1533
    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 1534
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOLOGIN_WINDOW_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private C()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1547
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SCHEDULE_UMBRELLA_TAG"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1548
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_MONTH_IS_TOUCH"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 1549
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRAFFIC_DAILY_IS_TOUCH"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 1550
    invoke-static {}, Lmz;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SCHEDULE_UMBRELLA"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 1552
    .local v0, "trafficSwitch":Z
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 1555
    invoke-static {v5, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 1556
    invoke-static {v3, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 1557
    invoke-static {v4, v0}, Lcom/iflytek/viafly/homepage/cmcc/CmccSettingFragment;->a(IZ)V

    .line 1559
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->updateScheduleSwitch(IZ)V

    .line 1560
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->setTrafficDailyScheduleThreshold(I)V

    .line 1563
    .end local v0    # "trafficSwitch":Z
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SCHEDULE_UMBRELLA_TAG"

    invoke-virtual {v1, v2, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 1564
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 577
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    :cond_0
    const/4 v1, 0x0

    .line 612
    :cond_1
    :goto_0
    return-object v1

    .line 580
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v1, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 582
    .local v0, "homeCardItem":Laic;
    invoke-virtual {v0}, Laic;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 584
    const-string/jumbo v4, "News"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 585
    const-string/jumbo v4, "top"

    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "local"

    .line 586
    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 587
    :cond_4
    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 589
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 593
    :cond_6
    const-string/jumbo v4, "recommend"

    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 594
    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 596
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 602
    .end local v0    # "homeCardItem":Laic;
    :cond_8
    const-string/jumbo v3, "News"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_1

    .line 604
    const-string/jumbo v4, "local"

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "top"

    .line 605
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laic;

    .line 607
    .local v2, "tempItem":Laic;
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-interface {v1, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 2
    .param p1, "force"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->autoRefresh(Z)V

    .line 997
    return-void
.end method

.method private a(IJ)V
    .locals 4
    .param p1, "force"    # I
    .param p2, "time"    # J

    .prologue
    .line 1003
    const-string/jumbo v1, "LxHomeMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1006
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1007
    const-wide/16 v2, 0x0

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendMessage(Landroid/os/Message;)Z

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-virtual {v1, v0, p2, p3}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private a(Laic;Z)V
    .locals 5
    .param p1, "dataCardItem"    # Laic;
    .param p2, "isLoad"    # Z

    .prologue
    .line 509
    const-string/jumbo v2, "LxHomeMainView"

    const-string/jumbo v3, "add card"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-nez p1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    :try_start_0
    const-string/jumbo v2, "LxHomeMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add card\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 518
    const-string/jumbo v2, "LxHomeMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "view has cache , load from viewFirstShowMap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Laic;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    check-cast v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .line 549
    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 552
    if-nez p2, :cond_10

    .line 554
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :goto_2
    const-string/jumbo v2, "Schedule"

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->setHomeResultCallback(Lail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 570
    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LxHomeMainView"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 521
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ListenBook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 522
    new-instance v0, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/listenbook/ListenCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto :goto_1

    .line 523
    :cond_4
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Weather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 524
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto :goto_1

    .line 525
    :cond_5
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Schedule"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 526
    new-instance v0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 527
    :cond_6
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Movie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 528
    new-instance v0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 529
    :cond_7
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Food"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 530
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/food/FoodCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 531
    :cond_8
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Fee"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 532
    new-instance v0, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/cmcc/CmccCard;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 533
    :cond_9
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 534
    new-instance v0, Lcom/iflytek/viafly/homepage/music/MusicCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/music/MusicCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 535
    :cond_a
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "News"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 536
    new-instance v0, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/news/HomeNewsCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 537
    :cond_b
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 538
    new-instance v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->h:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2, v3, p1}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;-><init>(Landroid/content/Context;Landroid/view/View;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 539
    :cond_c
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AudioNews"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 540
    new-instance v0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioResourceCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 541
    :cond_d
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "YueTingKa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 542
    new-instance v0, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/listenwell/ListenWellCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 543
    :cond_e
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PictureRecommend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 544
    new-instance v0, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/doublepicture/recommend/ListenBookRecommendView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 545
    :cond_f
    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    new-instance v0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;-><init>(Landroid/content/Context;Laic;)V

    .restart local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    goto/16 :goto_1

    .line 561
    :cond_10
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->z:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 175
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 176
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300a1

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 178
    const v1, 0x7f0b0435

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    .line 179
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    sget-object v2, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;->BOTH:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setMode(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$Mode;)V

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->b:Lcom/iflytek/viafly/ui/view/ptr/PtrDefaultHandler;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setPtrHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrHandler;)V

    .line 181
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setEnabledNextPtrAtOnce(Z)V

    .line 182
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->setForceBackWhenComplete(Z)V

    .line 184
    const v1, 0x7f0b0437

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    .line 185
    const v1, 0x7f0b0431

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->h:Landroid/widget/RelativeLayout;

    .line 186
    const v1, 0x7f0b0433

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->k:Landroid/view/View;

    .line 187
    const v1, 0x7f0b0434

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i:Landroid/widget/ImageView;

    .line 188
    const v1, 0x7f0b0432

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->j:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 189
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->k:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->j:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->j:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2}, Lbbi;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    .line 195
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    .line 196
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    .line 197
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->y:Ljava/util/LinkedHashMap;

    .line 199
    new-instance v1, Laih;

    invoke-direct {v1}, Laih;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    .line 200
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->K:Laik;

    invoke-virtual {v1, v2}, Laih;->a(Laik;)V

    .line 201
    invoke-static {}, Laic;->x()Laic;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    .line 203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 204
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "sdk is below 5.0,once is 5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x6

    iput v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->v()V

    .line 208
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w()V

    .line 209
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n()V

    .line 211
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Z)V

    .line 213
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 214
    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    .line 217
    const v1, 0x7f0b0436

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lazk;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02fd

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->h()V

    .line 228
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v1, :cond_2

    .line 229
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "refresh user info"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v6, v7}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1, v6, v7}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(IJ)V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeMainView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeMainView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Z)V

    return-void
.end method

.method private b(I)V
    .locals 2
    .param p1, "slideLength"    # I

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->scrollBy(II)V

    .line 1542
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/LxHomeMainView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    return-object v0
.end method

.method private c(Z)V
    .locals 18
    .param p1, "isLoad"    # Z

    .prologue
    .line 406
    const/4 v8, 0x0

    .line 407
    .local v8, "isNeedAddDivide":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 408
    :cond_0
    const/4 v8, 0x1

    .line 411
    :cond_1
    const/4 v2, 0x0

    .line 412
    .local v2, "addNum":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContentCount()I

    move-result v3

    .line 413
    .local v3, "contentCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_3

    .line 490
    .end local v3    # "contentCount":I
    :cond_2
    :goto_0
    return-void

    .line 416
    .restart local v3    # "contentCount":I
    :cond_3
    const/4 v7, 0x0

    .line 417
    .local v7, "isMax":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laic;

    .line 418
    .local v10, "orderCardItem":Laic;
    if-eqz v7, :cond_7

    .line 482
    .end local v10    # "orderCardItem":Laic;
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    if-le v12, v2, :cond_6

    const/4 v12, 0x3

    if-ge v3, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v13}, Laic;->z()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v13}, Laic;->z()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Laic;Z)V

    .line 486
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local v3    # "contentCount":I
    .end local v7    # "isMax":Z
    :catch_0
    move-exception v6

    .line 488
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "LxHomeMainView"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 421
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "contentCount":I
    .restart local v7    # "isMax":Z
    .restart local v10    # "orderCardItem":Laic;
    :cond_7
    const/4 v13, 0x3

    if-ne v3, v13, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v14}, Laic;->z()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v14}, Laic;->z()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 422
    add-int/lit8 v2, v2, 0x1

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Laic;Z)V

    .line 425
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    if-le v13, v2, :cond_5

    .line 429
    :cond_8
    invoke-virtual {v10}, Laic;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 430
    .local v5, "dataCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_4

    .line 434
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laic;

    .line 435
    .local v4, "dataCardItem":Laic;
    invoke-virtual {v4}, Laic;->f()I

    move-result v11

    .line 436
    .local v11, "state":I
    const/4 v14, 0x1

    if-ne v14, v11, :cond_9

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Laic;->z()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 439
    const/4 v14, 0x1

    invoke-virtual {v4}, Laic;->e()I

    move-result v15

    if-eq v14, v15, :cond_a

    .line 440
    add-int/lit8 v2, v2, 0x1

    .line 442
    const-string/jumbo v14, "Notification"

    invoke-virtual {v4}, Laic;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v8, :cond_a

    .line 444
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-wide/high16 v16, 0x405a000000000000L    # 104.0

    invoke-static/range {v15 .. v17}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v15

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    :goto_2
    const/4 v8, 0x0

    .line 454
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Laic;Z)V

    .line 462
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    if-gt v14, v2, :cond_c

    .line 463
    const/4 v7, 0x1

    .line 464
    goto/16 :goto_1

    .line 449
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 467
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    const/4 v14, 0x3

    invoke-virtual {v4}, Laic;->e()I

    move-result v15

    if-ne v14, v15, :cond_d

    .line 468
    add-int/lit8 v3, v3, 0x1

    .line 470
    :cond_d
    const/4 v14, 0x3

    if-ne v3, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v15}, Laic;->z()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    invoke-virtual {v15}, Laic;->z()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 471
    add-int/lit8 v2, v2, 0x1

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->I:Laic;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Laic;Z)V

    .line 474
    move-object/from16 v0, p0

    iget v14, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gt v14, v2, :cond_9

    .line 475
    const/4 v7, 0x1

    .line 476
    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->z()V

    return-void
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->y()V

    return-void
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t()V

    return-void
.end method

.method private getContentCount()I
    .locals 5

    .prologue
    .line 494
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 503
    :cond_1
    return v0

    .line 497
    :cond_2
    const/4 v0, 0x0

    .line 498
    .local v0, "count":I
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajl;

    .line 499
    .local v1, "listener":Lajl;
    const/4 v3, 0x3

    invoke-interface {v1}, Lajl;->getCardType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->u()V

    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->j:Lcom/iflytek/viafly/ui/view/CircleImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/LxHomeMainView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Laic;->p()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    .line 240
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    invoke-virtual {v1}, Lakm;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    .line 241
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 243
    :cond_0
    invoke-static {}, Laic;->o()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    .line 245
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 247
    .local v0, "homeCardItem":Laic;
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lakm;->a(Laic;)V

    goto :goto_0

    .line 250
    .end local v0    # "homeCardItem":Laic;
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MAIN_PAGE_VERSION"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 256
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p()V

    .line 257
    return-void

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o()V

    goto :goto_1
.end method

.method private o()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 262
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_MAIN_PAGE_VERSION"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "cacheVersion":I
    const-string/jumbo v8, "LxHomeMainView"

    const-string/jumbo v9, "check updata"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    if-ge v0, v11, :cond_4

    .line 265
    const-string/jumbo v8, "LxHomeMainView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start updata,old version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", new version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-nez v0, :cond_3

    .line 268
    invoke-static {}, Laic;->q()Laic;

    move-result-object v6

    .line 269
    .local v6, "notificationCard":Laic;
    invoke-static {}, Laic;->r()Laic;

    move-result-object v7

    .line 272
    .local v7, "notificationItem":Laic;
    const-string/jumbo v8, "LxHomeMainView"

    const-string/jumbo v9, "add card to dataBase"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v8

    invoke-virtual {v8, v7}, Lakm;->a(Laic;)V

    .line 274
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v8

    invoke-virtual {v8}, Lakm;->b()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    .line 276
    const/4 v5, 0x0

    .line 277
    .local v5, "isHave":Z
    invoke-static {}, Laic;->p()Ljava/util/List;

    move-result-object v2

    .line 278
    .local v2, "currentItem":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laic;

    .line 279
    .local v4, "homeCardItem":Laic;
    const-string/jumbo v9, "Notification"

    invoke-virtual {v4}, Laic;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 280
    const/4 v5, 0x1

    .line 284
    .end local v4    # "homeCardItem":Laic;
    :cond_1
    if-nez v5, :cond_2

    .line 285
    const-string/jumbo v8, "LxHomeMainView"

    const-string/jumbo v9, "add card to IflySetting"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v8, 0x0

    invoke-interface {v2, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 287
    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    .line 288
    invoke-static {v2}, Laic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "cardCfg":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_MAIN_PAGE_DATA"

    invoke-virtual {v8, v9, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v1    # "cardCfg":Ljava/lang/String;
    .end local v2    # "currentItem":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .end local v5    # "isHave":Z
    .end local v6    # "notificationCard":Laic;
    .end local v7    # "notificationItem":Laic;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 294
    :cond_3
    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 296
    invoke-static {}, Laic;->n()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    .line 297
    iget-object v8, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    invoke-static {v8}, Laic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1    # "cardCfg":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_MAIN_PAGE_DATA"

    invoke-virtual {v8, v9, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 303
    .end local v0    # "cacheVersion":I
    .end local v1    # "cardCfg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "LxHomeMainView"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 302
    .restart local v0    # "cacheVersion":I
    :cond_4
    :try_start_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_MAIN_PAGE_VERSION"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lil;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic o(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q()V

    return-void
.end method

.method static synthetic p(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private p()V
    .locals 20

    .prologue
    .line 311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v15, "orderParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 317
    .local v5, "countListen":I
    const/4 v6, 0x0

    .line 318
    .local v6, "countMovie":I
    const/4 v8, 0x0

    .line 319
    .local v8, "countNew":I
    const/4 v7, 0x0

    .line 320
    .local v7, "countMusic":I
    const/4 v4, 0x0

    .line 321
    .local v4, "countFood":I
    const/4 v2, 0x0

    .line 322
    .local v2, "contentCount":I
    const/4 v14, 0x0

    .line 323
    .local v14, "num":I
    const/4 v13, 0x0

    .line 325
    .local v13, "isRecordPicture":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laic;

    .line 326
    .local v12, "homeCardItem":Laic;
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, "groupId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 330
    const-string/jumbo v17, "ListenBook"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 331
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    .line 332
    add-int/2addr v2, v5

    .line 333
    if-lez v5, :cond_3

    .line 334
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "ListenBook"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_3
    :goto_2
    if-nez v13, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v2, v0, :cond_2

    .line 378
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "PictureRecommend"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 336
    :cond_4
    const-string/jumbo v17, "Music"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 337
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    .line 338
    add-int/2addr v2, v7

    .line 339
    if-lez v7, :cond_3

    .line 340
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Music"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 398
    .end local v2    # "contentCount":I
    .end local v4    # "countFood":I
    .end local v5    # "countListen":I
    .end local v6    # "countMovie":I
    .end local v7    # "countMusic":I
    .end local v8    # "countNew":I
    .end local v11    # "groupId":Ljava/lang/String;
    .end local v12    # "homeCardItem":Laic;
    .end local v13    # "isRecordPicture":Z
    .end local v14    # "num":I
    .end local v15    # "orderParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 399
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "LxHomeMainView"

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 342
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "contentCount":I
    .restart local v4    # "countFood":I
    .restart local v5    # "countListen":I
    .restart local v6    # "countMovie":I
    .restart local v7    # "countMusic":I
    .restart local v8    # "countNew":I
    .restart local v11    # "groupId":Ljava/lang/String;
    .restart local v12    # "homeCardItem":Laic;
    .restart local v13    # "isRecordPicture":Z
    .restart local v14    # "num":I
    .restart local v15    # "orderParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string/jumbo v17, "Movie"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 343
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    .line 344
    add-int/2addr v2, v6

    .line 345
    if-lez v6, :cond_3

    .line 346
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Movie"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 348
    :cond_6
    const-string/jumbo v17, "News"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 349
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 350
    add-int/2addr v2, v8

    .line 351
    if-lez v8, :cond_3

    .line 352
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "News"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 354
    :cond_7
    const-string/jumbo v17, "Food"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 355
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    .line 356
    add-int/2addr v2, v4

    .line 357
    if-lez v4, :cond_3

    .line 358
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Food"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 360
    :cond_8
    const-string/jumbo v17, "Fee"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 361
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 362
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Fee"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 364
    :cond_9
    const-string/jumbo v17, "Weather"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 365
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 366
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Weather"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 368
    :cond_a
    const-string/jumbo v17, "AudioNews"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 369
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 370
    .local v3, "countAudio":I
    add-int/2addr v2, v3

    .line 371
    invoke-virtual {v12}, Laic;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 372
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "AudioNews"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 375
    .end local v3    # "countAudio":I
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "d_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 382
    .end local v11    # "groupId":Ljava/lang/String;
    .end local v12    # "homeCardItem":Laic;
    :cond_c
    if-nez v13, :cond_d

    .line 383
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "d_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "PictureRecommend"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v16

    const-string/jumbo v17, "FT90028"

    .line 387
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 390
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v9, "countParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "d_listen"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v16, "d_movie"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v16, "d_news"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v16, "d_music"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v16, "d_food"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v16

    const-string/jumbo v17, "FT90029"

    .line 397
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic q(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private q()V
    .locals 6

    .prologue
    .line 1019
    :try_start_0
    const-string/jumbo v3, "LxHomeMainView"

    const-string/jumbo v4, "refreshData"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->setPullRefresh(Z)V

    .line 1028
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1029
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->K:Laik;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Laik;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LxHomeMainView"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1035
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->s()V

    .line 1037
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    invoke-virtual {v3}, Laih;->c()V

    .line 1038
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1039
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    .line 1040
    .local v0, "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    const-string/jumbo v3, "Schedule"

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getCardGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1041
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Laih;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1045
    .end local v0    # "cardView":Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    :cond_4
    sget-object v3, Lcom/iflytek/viafly/homepage/base/HomeEvent;->pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1055
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "loadMore"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->setLoadMore(Z)V

    .line 1065
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->K:Laik;

    invoke-interface {v0, v2}, Laik;->a(I)V

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1071
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Z)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r()V

    return-void
.end method

.method static synthetic s(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Laih;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    return-object v0
.end method

.method private s()V
    .locals 7

    .prologue
    .line 1172
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1179
    .local v3, "tempMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    const/4 v2, 0x0

    .line 1180
    .local v2, "i":I
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1181
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;->getCardType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1197
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    .end local v2    # "i":I
    .end local v3    # "tempMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LxHomeMainView"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1185
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    .restart local v2    # "i":I
    .restart local v3    # "tempMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1186
    :try_start_1
    iget v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->D:I

    if-le v2, v4, :cond_3

    .line 1188
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1191
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1195
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;>;"
    :cond_4
    iput-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    .line 1196
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic t(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->refreshComplete()V

    .line 1262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->setPullRefresh(Z)V

    .line 1263
    return-void
.end method

.method static synthetic u(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f:Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrClassicFrameLayout;->refreshComplete()V

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->setLoadMore(Z)V

    .line 1271
    return-void
.end method

.method static synthetic v(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->z:Ljava/util/List;

    return-object v0
.end method

.method private v()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1360
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    .line 1361
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1362
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1363
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1365
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1366
    .local v1, "tipView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-wide v4, 0x4055800000000000L    # 86.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1367
    .local v0, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v0, v6, v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1368
    const-string/jumbo v2, "\u5185\u5bb9\u4e00\u89c8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1369
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1370
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1371
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1372
    const v2, 0x7f0203fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1373
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1375
    return-void
.end method

.method static synthetic w(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/homepage/HomeMainScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    return-object v0
.end method

.method private w()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 1379
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    .line 1380
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1381
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1382
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1384
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1385
    .local v0, "tipView":Landroid/widget/TextView;
    const-string/jumbo v1, "\u6ca1\u6709\u66f4\u591a\u5566~"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    const-string/jumbo v1, "#4E556A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1388
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1389
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1390
    return-void
.end method

.method static synthetic x(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    return-object v0
.end method

.method private x()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1394
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1406
    :cond_1
    :goto_0
    return v1

    .line 1397
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-static {v3}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lauu;->e(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1400
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 1401
    .local v0, "homeCardItem":Laic;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "Schedule"

    invoke-virtual {v0}, Laic;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Laic;->e()I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_0

    .end local v0    # "homeCardItem":Laic;
    :cond_4
    move v1, v2

    .line 1406
    goto :goto_0
.end method

.method private y()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1411
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1412
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_NEED_REFRESH_USERINFO"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 1414
    .local v0, "needRefresh":Z
    if-eqz v0, :cond_1

    invoke-static {}, Lmz;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1415
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "refresh user info by sina"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v1

    invoke-virtual {v1}, Laoi;->d()V

    .line 1425
    .end local v0    # "needRefresh":Z
    :cond_0
    :goto_0
    invoke-static {}, Laoe;->a()Laoe;

    move-result-object v1

    invoke-virtual {v1}, Laoe;->b()V

    .line 1426
    return-void

    .line 1419
    .restart local v0    # "needRefresh":Z
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 1420
    invoke-virtual {v1, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1420
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1421
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1431
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1438
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->q:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u68c0\u6d4b\u60a8\u7684\u54aa\u5495\u8d26\u53f7\u5b58\u5728\u8d44\u4ea7\u95ee\u9898\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u5904\u7406\uff08400-101-1118\uff09"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/iflytek/viafly/homepage/LxHomeMainView$11;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$11;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1444
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u62e8\u6253\u7535\u8bdd"

    sget-object v2, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v3, Lcom/iflytek/viafly/homepage/LxHomeMainView$10;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$10;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    .line 1450
    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    .line 1462
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    const/16 v1, 0x11

    .line 1463
    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 1464
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 635
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 641
    :cond_0
    return-void

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajl;

    .line 639
    .local v0, "listener":Lajl;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lajl;)V

    goto :goto_0
.end method

.method public a(Lajl;)V
    .locals 1
    .param p1, "listener"    # Lajl;

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    const/4 v4, 0x0

    .line 661
    if-eqz p1, :cond_1

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v2, :cond_1

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT89801"

    .line 666
    invoke-virtual {v2, v3, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 668
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90024"

    .line 669
    invoke-virtual {v2, v3, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 672
    :cond_1
    if-eqz p1, :cond_3

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v2, :cond_3

    .line 675
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v2, :cond_3

    .line 676
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    .line 681
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 682
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajl;

    .line 683
    .local v1, "listener":Lajl;
    invoke-interface {v1, p1}, Lajl;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    .end local v1    # "listener":Lajl;
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LxHomeMainView"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "hotData"    # Lorg/json/JSONObject;

    .prologue
    .line 760
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_dot_updata:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 761
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isConnect"    # Z

    .prologue
    .line 764
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onNetConnectChange"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_network_changed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 766
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 694
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "isLongPress"    # Z

    .prologue
    .line 769
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onPhoneHomeKeyPressed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_home_key_pressed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 771
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 698
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 712
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 718
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 719
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 726
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 731
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 734
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 736
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 739
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 741
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 744
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 746
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_destory:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 748
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->r:Laih;

    invoke-virtual {v0}, Laih;->c()V

    .line 751
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->setPullRefresh(Z)V

    .line 752
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 755
    const-string/jumbo v0, "LxHomeMainView"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_stop:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 757
    return-void
.end method

.method public declared-synchronized l()Z
    .locals 1

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Z
    .locals 1

    .prologue
    .line 1118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 855
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 856
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->C:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 857
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 858
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-string/jumbo v5, "\u6b63\u5728\u52a0\u8f7d\uff0c\u8bf7\u7a0d\u540e"

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 861
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 862
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const v5, 0x7f0c02fd

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 865
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l:Lcom/iflytek/viafly/homepage/HomeMainScrollView;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/HomeMainScrollView;->fullScroll(I)Z

    .line 867
    const/4 v4, 0x1

    const-wide/16 v6, 0xfa

    invoke-direct {p0, v4, v6, v7}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(IJ)V

    .line 869
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->C:J

    goto :goto_0

    .line 872
    .end local v0    # "currentTime":J
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v4

    const-string/jumbo v5, "FT90031"

    const/4 v6, 0x0

    .line 873
    invoke-virtual {v4, v5, v6}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 875
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "user.center"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v2, "userIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    const-class v5, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 877
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 881
    .end local v2    # "userIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .local v3, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 884
    const-string/jumbo v4, "STAR_ENTRY_TYPE"

    const-string/jumbo v5, "6.0main"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 852
    :pswitch_data_0
    .packed-switch 0x7f0b0432
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(Laia;)V
    .locals 10
    .param p1, "event"    # Laia;

    .prologue
    .line 1291
    if-nez p1, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Laia;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1296
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v6

    invoke-virtual {v6}, Lakm;->b()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    .line 1298
    invoke-virtual {p1}, Laia;->c()Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "contentId":Ljava/lang/String;
    invoke-virtual {p1}, Laia;->b()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "groupId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1301
    invoke-virtual {p1}, Laia;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1303
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1304
    .local v5, "targetView":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1305
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1307
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1353
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    .end local v5    # "targetView":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v2

    .line 1354
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "LxHomeMainView"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1311
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentId":Ljava/lang/String;
    .restart local v3    # "groupId":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    move-object v5, v6

    .line 1312
    .restart local v5    # "targetView":Landroid/widget/LinearLayout;
    :goto_1
    if-eqz v5, :cond_0

    .line 1313
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v6, :cond_0

    .line 1314
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    new-instance v7, Lcom/iflytek/viafly/homepage/LxHomeMainView$8;

    invoke-direct {v7, p0, v3, v1, v5}, Lcom/iflytek/viafly/homepage/LxHomeMainView$8;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1311
    .end local v5    # "targetView":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;

    move-object v5, v6

    goto :goto_1

    .line 1328
    .end local v1    # "contentId":Ljava/lang/String;
    .end local v3    # "groupId":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Laia;->d()Ljava/util/List;

    move-result-object v4

    .line 1329
    .local v4, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 1331
    :cond_6
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v6

    invoke-virtual {v6}, Lakm;->b()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->B:Ljava/util/List;

    .line 1339
    :goto_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    .line 1340
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v6, :cond_7

    .line 1341
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    new-instance v7, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;

    invoke-direct {v7, p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$9;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->post(Ljava/lang/Runnable;)Z

    .line 1350
    :cond_7
    const/4 v6, 0x1

    const-wide/16 v8, 0x1f4

    invoke-direct {p0, v6, v8, v9}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(IJ)V

    .line 1351
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a()V

    goto/16 :goto_0

    .line 1334
    :cond_8
    iput-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    .line 1336
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->A:Ljava/util/List;

    invoke-static {v6}, Laic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "cardCfg":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_MAIN_PAGE_DATA"

    invoke-virtual {v6, v7, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onEvent(Laip;)V
    .locals 2
    .param p1, "event"    # Laip;

    .prologue
    .line 840
    if-nez p1, :cond_0

    .line 848
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 845
    invoke-virtual {p1}, Laip;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 847
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onEvent(Laiq;)V
    .locals 2
    .param p1, "event"    # Laiq;

    .prologue
    .line 813
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laiq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v1, :cond_0

    .line 817
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 818
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 819
    invoke-virtual {p1}, Laiq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onEvent(Laok;)V
    .locals 6
    .param p1, "event"    # Laok;

    .prologue
    const-wide/16 v4, 0x64

    .line 825
    if-nez p1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p1}, Laok;->a()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "eventType":Ljava/lang/String;
    const-string/jumbo v1, "NOT_LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 832
    :cond_2
    const-string/jumbo v1, "NEED_CONTACT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onEvent(Lcom/iflytek/viafly/account/model/BindSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/account/model/BindSuccessEvent;

    .prologue
    .line 1275
    if-nez p1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/model/BindSuccessEvent;->getMobile()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "remove bindWindow"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 6
    .param p1, "event"    # Lti;

    .prologue
    .line 775
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "Home View get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    const-string/jumbo v1, "UserLoginEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, " user login"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    .line 788
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->o:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    .line 792
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->C()V

    goto :goto_0

    .line 793
    :cond_3
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 794
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, " user loginOut"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    .line 797
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->p:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "bind mobile dialog dismiss"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 802
    :cond_4
    const-string/jumbo v1, "UserRealLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    invoke-static {}, Lmz;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-static {}, Lth;->a()Lth;

    move-result-object v1

    invoke-virtual {v1}, Lth;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->n:Lcom/iflytek/viafly/homepage/LxHomeMainView$a;

    const/16 v2, 0xa

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public declared-synchronized setLoadMore(Z)V
    .locals 1
    .param p1, "loadMore"    # Z

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    monitor-exit p0

    return-void

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPullRefresh(Z)V
    .locals 1
    .param p1, "pullRefresh"    # Z

    .prologue
    .line 1122
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    monitor-exit p0

    return-void

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
