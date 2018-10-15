.class public Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "HomeBannerCardView.java"

# interfaces
.implements Lajg;
.implements Lajk;


# instance fields
.field private A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

.field private H:Landroid/view/View;

.field private I:Landroid/os/Handler$Callback;

.field private final o:Ljava/lang/String;

.field private final p:I

.field private final q:I

.field private final r:J

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:Laiz;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lorg/json/JSONArray;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Laic;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "exposureView"    # Landroid/view/View;
    .param p3, "homeCardItem"    # Laic;

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0x3e7

    .line 84
    invoke-direct {p0, p1, p3}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 57
    const-string/jumbo v0, "HomeBannerCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->o:Ljava/lang/String;

    .line 58
    iput v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->p:I

    .line 59
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x405a000000000000L    # 104.0

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->q:I

    .line 60
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->r:J

    .line 61
    iput v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->s:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->t:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->u:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->B:Z

    .line 76
    iput v4, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->C:I

    .line 77
    iput v4, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->D:I

    .line 78
    iput v4, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->E:I

    .line 79
    iput v4, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->F:I

    .line 120
    new-instance v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$1;-><init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->I:Landroid/os/Handler$Callback;

    .line 85
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->H:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->g()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Laiz;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->C:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->D:I

    return v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->E:I

    return v0
.end method

.method private f()V
    .locals 10

    .prologue
    .line 466
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 483
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 470
    .local v2, "len":I
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 471
    .local v1, "appContext":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 472
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 473
    .local v0, "adInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 474
    const-string/jumbo v5, "platformid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 476
    .local v3, "platFormId":I
    const/16 v5, 0x9

    if-ne v3, v5, :cond_3

    .line 477
    invoke-static {v1}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "miguLevel"

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lwv;->a(JLjava/lang/String;I)V

    .line 471
    .end local v3    # "platFormId":I
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    .restart local v3    # "platFormId":I
    :cond_3
    invoke-static {v1}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lwv;->a(JLjava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->F:I

    return v0
.end method

.method private getContentView()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "contentView":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    new-instance v2, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->q:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/ad/business/BannerADDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->G:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string/jumbo v0, "HomeBannerCardView"

    const-string/jumbo v1, "mHandler is null, can\'t request data"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 324
    const-string/jumbo v1, "HomeBannerCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$3;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "activity_resume"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "handleEvent exception"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "activity_stop"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->c()V

    goto :goto_0

    .line 339
    :pswitch_2
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "on_page_show"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->b()V

    goto :goto_0

    .line 343
    :pswitch_3
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "on_page_dismiss"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->c()V

    goto :goto_0

    .line 347
    :pswitch_4
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "activity_destory"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a()V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    if-eqz v1, :cond_0

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    goto :goto_0

    .line 361
    :pswitch_5
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->B:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 365
    :cond_4
    const-string/jumbo v1, "HomeBannerCardView"

    const-string/jumbo v2, "mHandler is null, can\'t request data"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    :pswitch_6
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->k()V

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string/jumbo v0, "HomeBannerCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result banner array = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView$2;-><init>(Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "hasAnimation"    # Z

    .prologue
    .line 231
    const-string/jumbo v5, "HomeBannerCardView"

    const-string/jumbo v6, "updateBannerView"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 234
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 235
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 237
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 238
    .local v4, "obj":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    const-string/jumbo v6, "maturl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "admarkflag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    const-string/jumbo v5, "admark"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "mark":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    const-string/jumbo v6, "\u5e7f\u544a"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2    # "mark":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .restart local v2    # "mark":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 265
    .end local v1    # "i":I
    .end local v2    # "mark":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HomeBannerCardView"

    const-string/jumbo v6, "updateBannerView exception "

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 247
    .restart local v1    # "i":I
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v5, "HomeBannerCardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imgUrlList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v5, "HomeBannerCardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adIconList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->x:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v5, :cond_1

    .line 254
    const-string/jumbo v5, "HomeBannerCardView"

    const-string/jumbo v6, "mhandler is not null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 256
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 257
    if-eqz p2, :cond_4

    .line 258
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 262
    :goto_3
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 260
    :cond_4
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public b()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(J)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 389
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a()V

    .line 399
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->I:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->H:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->G:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .line 93
    new-instance v0, Laiz;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->G:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-direct {v0, p0, v1, v2}, Laiz;-><init>(Lajk;Landroid/content/Context;Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    .line 94
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->getContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a(Landroid/widget/LinearLayout;)V

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->A:Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lajg;)Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 96
    const-string/jumbo v0, "HomeBannerCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bannerCardViewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_0
    return-void
.end method

.method public onItemClick(IIIII)V
    .locals 26
    .param p1, "position"    # I
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "upX"    # I
    .param p5, "upY"    # I

    .prologue
    .line 404
    :try_start_0
    const-string/jumbo v2, "content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->d(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->y:Lorg/json/JSONArray;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 406
    .local v18, "adInfo":Lorg/json/JSONObject;
    if-eqz v18, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    .line 408
    .local v19, "appContext":Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "LX_100067"

    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, "platformid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 411
    .local v6, "platFormId":I
    const/16 v2, 0x9

    if-ne v6, v2, :cond_1

    .line 412
    invoke-static/range {v19 .. v19}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "miguLevel"

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v2, v4, v5, v3, v7}, Lwv;->b(JLjava/lang/String;I)V

    .line 416
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->G:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    sget-object v3, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v4, "id"

    .line 417
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "platformslotid"

    .line 418
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "clicknoticeurls"

    .line 420
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p0

    .line 416
    invoke-virtual/range {v2 .. v12}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->bannerReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIIILandroid/view/View;)V

    .line 421
    const-string/jumbo v2, "action"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 422
    .local v17, "action":I
    const-string/jumbo v2, "HomeBannerCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v15, 0x1

    .line 424
    .local v15, "ACTION_OUTER_BROWSER":I
    const/4 v13, 0x7

    .line 425
    .local v13, "ACTION_INNER_BROWSER":I
    const/16 v16, 0x8

    .line 426
    .local v16, "ACTION_TRANSLATE_ENTRY_BROWSER":I
    const/16 v14, 0x9

    .line 427
    .local v14, "ACTION_NATIVE":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 428
    const-string/jumbo v2, "clickurl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 429
    .local v21, "clickUrl":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 431
    .local v25, "uri":Landroid/net/Uri;
    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 432
    .local v23, "itent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 461
    .end local v6    # "platFormId":I
    .end local v13    # "ACTION_INNER_BROWSER":I
    .end local v14    # "ACTION_NATIVE":I
    .end local v15    # "ACTION_OUTER_BROWSER":I
    .end local v16    # "ACTION_TRANSLATE_ENTRY_BROWSER":I
    .end local v17    # "action":I
    .end local v18    # "adInfo":Lorg/json/JSONObject;
    .end local v19    # "appContext":Landroid/content/Context;
    .end local v21    # "clickUrl":Ljava/lang/String;
    .end local v23    # "itent":Landroid/content/Intent;
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 414
    .restart local v6    # "platFormId":I
    .restart local v18    # "adInfo":Lorg/json/JSONObject;
    .restart local v19    # "appContext":Landroid/content/Context;
    :cond_1
    invoke-static/range {v19 .. v19}, Lwv;->a(Landroid/content/Context;)Lwv;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v2, v4, v5, v3, v7}, Lwv;->b(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 458
    .end local v6    # "platFormId":I
    .end local v18    # "adInfo":Lorg/json/JSONObject;
    .end local v19    # "appContext":Landroid/content/Context;
    :catch_0
    move-exception v22

    .line 459
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeBannerCardView"

    const-string/jumbo v3, "clicked bannerAD Pic exception"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 435
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v6    # "platFormId":I
    .restart local v13    # "ACTION_INNER_BROWSER":I
    .restart local v14    # "ACTION_NATIVE":I
    .restart local v15    # "ACTION_OUTER_BROWSER":I
    .restart local v16    # "ACTION_TRANSLATE_ENTRY_BROWSER":I
    .restart local v17    # "action":I
    .restart local v18    # "adInfo":Lorg/json/JSONObject;
    .restart local v19    # "appContext":Landroid/content/Context;
    :cond_2
    const/4 v2, 0x7

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 436
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    const-string/jumbo v3, "title"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "clickurl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laiz;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_3
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 438
    const-string/jumbo v2, "clickurl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 439
    .restart local v21    # "clickUrl":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    new-instance v20, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct/range {v20 .. v20}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 442
    .local v20, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 443
    const-string/jumbo v2, "noTitle"

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    .line 445
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lqh;->a(Lcom/iflytek/viafly/browser/BrowserParams;)V

    goto :goto_1

    .line 447
    .end local v20    # "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    .end local v21    # "clickUrl":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x9

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 448
    const-string/jumbo v2, "clickurl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 449
    .local v24, "page":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    const-string/jumbo v2, "LoginHomePage"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SetVoiceprintHomePage"

    .line 452
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lazo;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/banner/HomeBannerCardView;->v:Laiz;

    invoke-virtual {v0, p1}, Laiz;->a(Lail;)V

    .line 284
    return-void
.end method
