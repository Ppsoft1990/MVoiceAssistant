.class public Lcom/iflytek/viafly/homepage/LxHomeDialogView;
.super Landroid/widget/LinearLayout;
.source "LxHomeDialogView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ladu;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laee;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Landroid/widget/ImageView;

.field private h:Lju;

.field private i:Lic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e:Z

    .line 232
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->h:Lju;

    .line 333
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView$4;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->i:Lic;

    .line 70
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->i()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->f:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 80
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030017

    const/4 v6, 0x1

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v5, 0x7f0b00cd

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const v5, 0x7f0b00ce

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/iflytek/viafly/homepage/LxHomeDialogView$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v5, 0x7f0b00cf

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->g:Landroid/widget/ImageView;

    .line 97
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->g:Landroid/widget/ImageView;

    new-instance v6, Lcom/iflytek/viafly/homepage/LxHomeDialogView$2;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView$2;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->p()V

    .line 106
    const v5, 0x7f0b00d0

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a:Landroid/widget/ListView;

    .line 107
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 109
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "footView":Landroid/view/View;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v2, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 111
    .local v2, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string/jumbo v1, "LxHomeDialogView"

    const-string/jumbo v2, "startSpeak content is empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    const-string/jumbo v1, "LxHomeDialogView"

    const-string/jumbo v2, "startSpeak content is empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->h:Lju;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->h:Lju;

    const v2, 0x186a0

    invoke-interface {v1, v2}, Lju;->onPlayCompletedCallBack(I)V

    goto :goto_0

    .line 216
    :cond_2
    :try_start_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->l()Lpp;

    move-result-object v1

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->h:Lju;

    invoke-virtual {v1, p1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LxHomeDialogView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/LxHomeDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->o()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    .line 119
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->j()V

    .line 121
    new-instance v0, Ladu;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ladu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    new-instance v0, Laec;

    const-string/jumbo v1, "\u6211\u80fd\u5e2e\u4f60\u505a\u70b9\u4ec0\u4e48\u5417?"

    invoke-direct {v0, v1}, Laec;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "chatLeftMessage":Laec;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    invoke-virtual {v0}, Ladu;->notifyDataSetChanged()V

    .line 326
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 327
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->q()V

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 358
    :cond_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 362
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e:Z

    .line 364
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->n()Z

    move-result v1

    .line 393
    .local v1, "isOpen":Z
    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 397
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 399
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->p()V

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 403
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "open"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90003"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 408
    return-void

    .line 397
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 405
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "close"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private p()V
    .locals 2

    .prologue
    .line 411
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200bf

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    return-void

    .line 411
    :cond_0
    const v0, 0x7f0200be

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->j()V

    .line 282
    return-void
.end method

.method public a(Laee;)V
    .locals 3
    .param p1, "message"    # Laee;

    .prologue
    .line 137
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string/jumbo v0, "LxHomeDialogView"

    const-string/jumbo v1, "addBizResultToDialog current page is not showing, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    invoke-virtual {v0}, Ladu;->notifyDataSetChanged()V

    .line 150
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Laee;->b:Z

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p1, Laee;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e:Z

    .line 156
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->i:Lic;

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 157
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    iget-object v1, p1, Laee;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lie;->a(Ljava/lang/String;)V

    .line 165
    :cond_3
    :goto_1
    instance-of v0, p1, Laei;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    .line 169
    const-string/jumbo v0, "LxHomeDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update anchor to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p1, Laee;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_5
    const-string/jumbo v0, "LxHomeDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " adjust listview selection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a:Landroid/widget/ListView;

    iget v1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 374
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v0, :cond_1

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 381
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    if-ne p1, v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    invoke-virtual {v0, p1}, Ladu;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 384
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d:I

    .line 288
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 289
    return-void
.end method

.method public b(Laee;)V
    .locals 1
    .param p1, "message"    # Laee;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b:Ladu;

    invoke-virtual {v0}, Ladu;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 294
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_call:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 301
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_sms:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 305
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_incoming_schedule:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 309
    return-void
.end method

.method public getBizResultMsgCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->m()V

    .line 368
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 314
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->l()Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
