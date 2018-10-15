.class public Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;
.super Landroid/widget/LinearLayout;
.source "HomePageView.java"

# interfaces
.implements Lcom/iflytek/framework/browser/localControlView/OperationView$a;
.implements Lcom/iflytek/viafly/Home$a;
.implements Lqs;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lahz;

.field private c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

.field private d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

.field private e:Lqr;

.field private f:Layc;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/ui/container/WidgetContainerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/FrameLayout;

.field private i:I

.field private j:Landroid/animation/ObjectAnimator;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->l:J

    .line 106
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    .line 107
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 201
    :goto_0
    return-object v1

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 197
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "view":Landroid/view/View;
    :cond_2
    move-object v1, v2

    .line 201
    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)Lcom/iflytek/viafly/homepage/LxHomeDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x1

    .line 112
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setOrientation(I)V

    .line 114
    const-string/jumbo v4, "HomePageView"

    const-string/jumbo v5, "initView"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "mLxHomeTopBarView":Lcom/iflytek/viafly/homepage/LxHomeTopBarView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v3, "topParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    .line 121
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v2}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v4, Lcom/iflytek/viafly/homepage/LxHomeMainView;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeMainView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .line 127
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v4, Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .line 132
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->setVisibility(I)V

    .line 134
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    iget v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->i:I

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->setTop(I)V

    .line 140
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Landroid/view/View;)V

    .line 141
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    invoke-direct {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/View;)V

    .line 145
    new-instance v4, Lqr;

    invoke-direct {v4, p1}, Lqr;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    .line 147
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v1, "micParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    invoke-virtual {v4}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    invoke-virtual {v4, p0}, Lqr;->a(Lqs;)V

    .line 156
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->g(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->i:I

    .line 159
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 614
    if-nez p1, :cond_1

    .line 649
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 618
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v3, "HomePageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchMainView begin, view is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string/jumbo v3, "HomePageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchMainView begin, getChildAt(0) is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0, v7}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 624
    .local v2, "oldView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 625
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 627
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 628
    invoke-virtual {p0, p1, v7, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 631
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    if-eq v2, p1, :cond_0

    .line 634
    invoke-virtual {p0, v7}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->removeViewAt(I)V

    .line 637
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 640
    invoke-virtual {p0, p1, v7, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 643
    instance-of v3, p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v3, :cond_0

    .line 644
    check-cast p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "focus":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 3
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_1

    .line 261
    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 252
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 254
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 251
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 257
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 224
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 225
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 226
    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_0

    .line 236
    :goto_0
    return v7

    .line 229
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 230
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 231
    aget v8, v0, v7

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int v3, v8, v9

    .line 232
    .local v3, "screenLeft":I
    aget v8, v0, v7

    iget v9, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v8, v9

    .line 233
    .local v4, "screenRight":I
    aget v8, v0, v6

    iget v9, v1, Landroid/graphics/Rect;->top:I

    add-int v5, v8, v9

    .line 234
    .local v5, "screenTop":I
    aget v8, v0, v6

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 235
    .local v2, "screenBottom":I
    const-string/jumbo v8, "HomePageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "$screenLeft:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$screenRight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$screenTop:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "$screenBottom:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    int-to-float v9, v3

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    int-to-float v9, v4

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    int-to-float v9, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    int-to-float v9, v2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private b(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 220
    :goto_0
    return-object v1

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0, v0, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 216
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "view":Landroid/view/View;
    :cond_2
    move-object v1, v2

    .line 220
    goto :goto_0
.end method

.method private b(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 5
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_1

    .line 287
    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 273
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_2

    const-string/jumbo v3, "QuestionMessageItemDelegate"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 277
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 278
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 279
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 276
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .restart local v2    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_3

    const-string/jumbo v3, "QuestionMessageItemDelegate"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getCurrentPageState()Lahz;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    return-object v0
.end method

.method private setCurrentPageState(Lahz;)V
    .locals 0
    .param p1, "homePageState"    # Lahz;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    .line 398
    return-void
.end method

.method private setCurrentPageState(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 652
    if-nez p1, :cond_0

    .line 669
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 656
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->e()V

    .line 660
    :cond_1
    instance-of v0, p1, Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    if-eqz v0, :cond_2

    .line 661
    new-instance v0, Laie;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {v0, v1}, Laie;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Lahz;)V

    .line 668
    .end local p1    # "view":Landroid/view/View;
    :goto_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->d()V

    goto :goto_0

    .line 662
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    instance-of v0, p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v0, :cond_3

    .line 663
    new-instance v0, Laig;

    check-cast p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1}, Laig;-><init>(Lcom/iflytek/framework/browser/localControlView/OperationView;)V

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Lahz;)V

    goto :goto_1

    .line 665
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    new-instance v0, Laif;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {v0, v1}, Laif;-><init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Lahz;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 601
    return-void
.end method

.method public a(Laee;)V
    .locals 1
    .param p1, "message"    # Laee;

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a(Laee;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string/jumbo v0, "tab_home_common"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tab_home_discover"

    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    const-string/jumbo v0, "tag_text_send"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->f()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 8
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 525
    const-string/jumbo v5, "HomePageView"

    const-string/jumbo v6, "openControlView "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string/jumbo v5, "translation"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 531
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->f:Layc;

    if-nez v5, :cond_0

    .line 532
    new-instance v5, Layc;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Layc;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->f:Layc;

    .line 535
    :cond_0
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->f:Layc;

    invoke-virtual {v5, p2}, Layc;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    const-string/jumbo v5, "HomePageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "openControlView  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v5, :cond_3

    .line 543
    const-string/jumbo v5, "HomePageView"

    const-string/jumbo v6, "openControlView error, mControlViewMap is null"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_3
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 548
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    check-cast v0, Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .restart local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :goto_1
    move-object v1, v0

    .line 568
    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 570
    .local v1, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    invoke-virtual {v1, p0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->setOperationViewEventListener(Lcom/iflytek/framework/browser/localControlView/OperationView$a;)V

    .line 571
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->i()V

    .line 573
    const-string/jumbo v5, "smarthome"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 575
    invoke-direct {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Landroid/view/View;)V

    .line 576
    invoke-direct {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 560
    .end local v1    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_4
    const-string/jumbo v5, "schedule"

    invoke-static {p1, v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 561
    new-instance v0, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;

    .end local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 565
    .restart local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :goto_2
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 563
    :cond_5
    new-instance v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Lcom/iflytek/framework/browser/localControlView/OperationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    goto :goto_2

    .line 577
    .restart local v1    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_6
    const-string/jumbo v5, "schedule"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 578
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->c()V

    goto/16 :goto_0

    .line 581
    :cond_7
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .local v4, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    move-object v2, v4

    .line 583
    check-cast v2, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 584
    .local v2, "view":Lcom/iflytek/framework/browser/localControlView/OperationView;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "viewFocus":Ljava/lang/String;
    const-string/jumbo v6, "schedule"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "smarthome"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 590
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->c()V

    goto :goto_3
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "hotData"    # Lorg/json/JSONObject;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0, p1}, Lahz;->a(Lorg/json/JSONObject;)V

    .line 495
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isConnect"    # Z

    .prologue
    .line 467
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "onNetConnectChange"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0, p1}, Lahz;->a(Z)V

    .line 469
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0, p1, p2, p3}, Lahz;->a(IILandroid/content/Intent;)V

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 447
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    invoke-virtual {v1, p1, p2}, Lqr;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v1, p1, p2}, Lahz;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 457
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->o()Z

    move-result v0

    goto :goto_0

    .line 458
    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->p()Z

    move-result v0

    goto :goto_0

    .line 462
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)Z
    .locals 1
    .param p1, "state"    # Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->f()V

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .local v0, "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    move-object v1, v0

    .line 686
    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 691
    .end local v0    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(Laee;)V
    .locals 1
    .param p1, "message"    # Laee;

    .prologue
    .line 763
    if-nez p1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b(Laee;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    instance-of v0, v0, Laif;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0, p1}, Lahz;->d(Z)V

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 786
    if-nez p1, :cond_0

    .line 793
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Laei;

    invoke-direct {v0, p1}, Laei;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "questionMessage":Laei;
    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->g()V

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    invoke-virtual {v3}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    .line 167
    .local v1, "isInSpeechView":Z
    if-nez v1, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "tagView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "editView":Landroid/view/View;
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->l:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->l:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 174
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Laii;

    invoke-direct {v4}, Laii;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->l:J

    .line 182
    .end local v0    # "editView":Landroid/view/View;
    .end local v1    # "isInSpeechView":Z
    .end local v2    # "tagView":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 177
    .restart local v0    # "editView":Landroid/view/View;
    .restart local v1    # "isInSpeechView":Z
    .restart local v2    # "tagView":Landroid/view/View;
    :cond_2
    const-string/jumbo v3, "HomePageView"

    const-string/jumbo v4, "you click so fast, please slow down "

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->h()V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->i()V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v1}, Lahz;->j()V

    .line 428
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .line 430
    .local v0, "opView":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "opView":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->a()V

    goto :goto_0

    .line 434
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getBizResultMsgCount()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getBizResultMsgCount()I

    move-result v0

    return v0
.end method

.method public getCurrentMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMicController()Lqr;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    instance-of v0, v0, Laie;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    instance-of v0, v0, Laig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 5

    .prologue
    .line 315
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "showMainPage "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->i:I

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k:Landroid/animation/ObjectAnimator;

    .line 327
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 355
    :cond_1
    return-void
.end method

.method public k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "showDialogPage "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->setCurrentPageState(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->h:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->d:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->i:I

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j:Landroid/animation/ObjectAnimator;

    .line 372
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90001"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 380
    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 475
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "onIncomingCall"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->a()V

    .line 477
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 484
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "onIncomingSms"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->b()V

    .line 486
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 489
    const-string/jumbo v0, "HomePageView"

    const-string/jumbo v1, "onIncomingSchedule"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b:Lahz;

    invoke-virtual {v0}, Lahz;->c()V

    .line 491
    return-void
.end method

.method public o()Z
    .locals 6

    .prologue
    .line 701
    const-string/jumbo v3, "HomePageView"

    const-string/jumbo v4, "handleBackClick "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, "currentView":Landroid/view/View;
    const-string/jumbo v3, "HomePageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBackClick begin, currentView is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    instance-of v3, v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v3, :cond_1

    .line 707
    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    .line 708
    .local v2, "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "focus":Ljava/lang/String;
    const-string/jumbo v3, "HomePageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleBackClick focus is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "smarthome"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 717
    .end local v1    # "focus":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .line 720
    .end local v2    # "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    :goto_0
    return v3

    .restart local v0    # "currentView":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 730
    .local v0, "currentView":Landroid/view/View;
    const-string/jumbo v1, "HomePageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMenuClick begin, currentView is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    instance-of v1, v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v1, :cond_0

    .line 734
    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->d()V

    .line 735
    const/4 v1, 0x1

    .line 738
    :goto_0
    return v1

    .restart local v0    # "currentView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public q()V
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->e:Lqr;

    invoke-virtual {v0}, Lqr;->f()V

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 808
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public r()V
    .locals 4

    .prologue
    .line 813
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$2;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    return-void
.end method

.method public s()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xcd

    .line 822
    invoke-static {}, Lhl;->k()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 823
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-static {v6}, Lasb;->d(I)Z

    move-result v1

    .line 829
    .local v1, "isPluginInstalled":Z
    if-nez v1, :cond_2

    .line 830
    const-string/jumbo v2, "HomePageView"

    const-string/jumbo v3, "\u5f00\u59cb\u5b89\u88c5\u63d2\u4ef6!"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    instance-of v2, v2, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    if-eqz v2, :cond_0

    .line 832
    new-instance v3, Lasi;

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v3, v2, v4}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    check-cast v2, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    sget-object v4, Lasc;->a:Lasc;

    sget-object v5, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->smart_home:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 833
    invoke-virtual {v3, v2, v6, v4, v5}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 840
    :cond_2
    const-string/jumbo v2, "HomePageView"

    const-string/jumbo v3, "\u6253\u5f00\u667a\u80fd\u5bb6\u5c45\u9891\u9053"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 843
    .local v0, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 844
    const-string/jumbo v2, "HomePageView"

    const-string/jumbo v3, "network not connected clear cache devices"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v2

    .line 847
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->clearFoundDevices()V

    .line 848
    const-string/jumbo v2, "smarthome"

    invoke-virtual {p0, v2, v4}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 852
    :goto_1
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->setHomeEntryScanFlag(Z)V

    goto :goto_0

    .line 850
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->startScan()V

    goto :goto_1
.end method
