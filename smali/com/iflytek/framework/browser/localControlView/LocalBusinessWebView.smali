.class public Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
.super Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.source "LocalBusinessWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;
    }
.end annotation


# instance fields
.field a:I

.field final b:I

.field private p:Z

.field private q:Z

.field private r:Lcom/iflytek/framework/ui/DisplayComponent;

.field private s:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Laee;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->p:Z

    .line 70
    iput-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->q:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    iput v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    .line 90
    const/16 v0, 0xa

    iput v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a:I

    .line 92
    const/16 v0, 0xc8

    iput v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b:I

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    .line 646
    iput-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->x:Z

    .line 102
    iput-object p3, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$1;-><init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 115
    :cond_0
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->setIsNeedInject(Z)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private a(Laee;)V
    .locals 1
    .param p1, "chatMessage"    # Laee;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v0, "WidgetMMPContainerComponents"

    new-instance v1, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;-><init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 121
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0, p2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->registBusinessComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "translation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-translate.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->v:Landroid/os/Handler;

    .line 143
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "G620-L75"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HUAWEI G660-L075"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HUAWEI G730-L075"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    :cond_1
    return-void

    .line 125
    :cond_2
    const-string/jumbo v0, "schedule"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-schedule.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v0, "telephone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "message"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "contacts"

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    :cond_4
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0}, Lgx;->g()V

    .line 133
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-dial.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_5
    const-string/jumbo v0, "smarthome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-smarthome.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_6
    const-string/jumbo v0, "file:///android_asset/dialogMode/index-local.html"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "delayedTime"    # J

    .prologue
    .line 613
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 614
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 615
    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    .line 616
    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->h()V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->v:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;-><init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "answerText"    # Ljava/lang/String;
    .param p2, "isNeedBroadcast"    # Z

    .prologue
    .line 347
    new-instance v0, Laec;

    invoke-direct {v0, p1}, Laec;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "chatLeftMessage":Laec;
    iput-boolean p2, v0, Laec;->b:Z

    .line 349
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    .line 350
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->h()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 60
    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 60
    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    const-string/jumbo v0, "LocalBusinessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "execFunc begin, baseXcssParseFinish is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,businessXcssParseFinish is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,funList size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 596
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    .line 600
    const-string/jumbo v0, "telephone"

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "contacts"

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sms"

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Ljava/lang/String;J)V

    .line 607
    :cond_1
    :goto_0
    const-string/jumbo v0, "LocalBusinessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "execFunc end, baseXcssParseFinish is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,businessXcssParseFinish is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,funList size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 609
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a:I

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->u:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public a(Lcom/iflytek/framework/ui/DisplayComponent;)V
    .locals 23
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->getName()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "displayComponentClassName":Ljava/lang/String;
    const-string/jumbo v20, "LocalBusinessView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addDisplayComponent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v4, 0x0

    .line 176
    .local v4, "chatMessage":Laee;
    :try_start_0
    const-string/jumbo v20, "LocalBusinessView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addView: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Lacy;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 217
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 220
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 221
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 222
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;

    move-result-object v21

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 225
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    .line 228
    .local v11, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "filterStr":Ljava/lang/String;
    const-string/jumbo v20, "smarthome"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->i()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 234
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "addE(\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\',\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\')"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 241
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->canDelete()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 330
    .end local v10    # "filterStr":Ljava/lang/String;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 331
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "LocalBusinessView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addView "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " error "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 236
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "filterStr":Ljava/lang/String;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string/jumbo v20, "LocalBusinessView"

    const-string/jumbo v21, "save func to list"

    invoke-static/range {v20 .. v21}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addE(\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\',\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->configInfo()V

    .line 251
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 317
    :cond_7
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/iflytek/framework/ui/DisplayComponent;->canDelete()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    goto/16 :goto_0

    .line 254
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 255
    move-object/from16 v0, p1

    check-cast v0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-object v5, v0

    .line 257
    .local v5, "components":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-virtual {v5}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 258
    .end local v5    # "components":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lacz;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 259
    move-object/from16 v0, p1

    check-cast v0, Lacz;

    move-object v5, v0

    .line 260
    .local v5, "components":Lacz;
    new-instance v3, Laek;

    invoke-direct {v3, v5}, Laek;-><init>(Lacz;)V

    .line 261
    .local v3, "callMessage":Laek;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 262
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto :goto_2

    .line 263
    .end local v3    # "callMessage":Laek;
    .end local v5    # "components":Lacz;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Ladd;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 264
    move-object/from16 v0, p1

    check-cast v0, Ladd;

    move-object v5, v0

    .line 265
    .local v5, "components":Ladd;
    new-instance v15, Laeq;

    invoke-direct {v15, v5}, Laeq;-><init>(Ladd;)V

    .line 266
    .local v15, "phoneListMessage":Laeq;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 267
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto :goto_2

    .line 268
    .end local v5    # "components":Ladd;
    .end local v15    # "phoneListMessage":Laeq;
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Ladb;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 269
    move-object/from16 v0, p1

    check-cast v0, Ladb;

    move-object v5, v0

    .line 270
    .local v5, "components":Ladb;
    new-instance v6, Laem;

    invoke-direct {v6, v5}, Laem;-><init>(Ladb;)V

    .line 271
    .local v6, "contactMessage":Laem;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 272
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 273
    .end local v5    # "components":Ladb;
    .end local v6    # "contactMessage":Laem;
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lacx;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 274
    move-object/from16 v0, p1

    check-cast v0, Lacx;

    move-object v5, v0

    .line 275
    .local v5, "components":Lacx;
    new-instance v12, Laep;

    invoke-direct {v12, v5}, Laep;-><init>(Lacx;)V

    .line 276
    .local v12, "latestContactMessage":Laep;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 277
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 278
    .end local v5    # "components":Lacx;
    .end local v12    # "latestContactMessage":Laep;
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lade;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 279
    move-object/from16 v0, p1

    check-cast v0, Lade;

    move-object v5, v0

    .line 280
    .local v5, "components":Lade;
    new-instance v18, Lafy;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lafy;-><init>(Lade;)V

    .line 281
    .local v18, "smsInputMessage":Lafy;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 282
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 283
    .end local v5    # "components":Lade;
    .end local v18    # "smsInputMessage":Lafy;
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lacy;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 284
    move-object/from16 v0, p1

    check-cast v0, Lacy;

    move-object v5, v0

    .line 286
    .local v5, "components":Lacy;
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getBizResultMsgCount()I

    move-result v14

    .line 289
    .local v14, "msgCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_7

    .line 290
    new-instance v13, Lafw;

    invoke-direct {v13, v5}, Lafw;-><init>(Lacy;)V

    .line 291
    .local v13, "latestSmsMessage":Lafw;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 292
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 295
    .end local v5    # "components":Lacy;
    .end local v13    # "latestSmsMessage":Lafw;
    .end local v14    # "msgCount":I
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Ladf;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 296
    move-object/from16 v0, p1

    check-cast v0, Ladf;

    move-object v5, v0

    .line 297
    .local v5, "components":Ladf;
    new-instance v19, Laga;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Laga;-><init>(Ladf;)V

    .line 299
    .local v19, "smsOfflineMessage":Laga;
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 300
    .end local v5    # "components":Ladf;
    .end local v19    # "smsOfflineMessage":Laga;
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lada;

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 301
    move-object/from16 v0, p1

    check-cast v0, Lada;

    move-object v5, v0

    .line 302
    .local v5, "components":Lada;
    new-instance v7, Laev;

    invoke-direct {v7, v5}, Laev;-><init>(Lada;)V

    .line 303
    .local v7, "createMessage":Laev;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 304
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 305
    .end local v5    # "components":Lada;
    .end local v7    # "createMessage":Laev;
    :cond_11
    move-object/from16 v0, p1

    instance-of v0, v0, Ladc;

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 306
    move-object/from16 v0, p1

    check-cast v0, Ladc;

    move-object v5, v0

    .line 307
    .local v5, "components":Ladc;
    new-instance v17, Laex;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Laex;-><init>(Ladc;)V

    .line 308
    .local v17, "searchListMessage":Laex;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 309
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    goto/16 :goto_2

    .line 310
    .end local v5    # "components":Ladc;
    .end local v17    # "searchListMessage":Laex;
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Laur;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 311
    move-object/from16 v0, p1

    check-cast v0, Laur;

    move-object v5, v0

    .line 312
    .local v5, "components":Laur;
    new-instance v16, Laft;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Laft;-><init>(Laur;)V

    .line 313
    .local v16, "scheduleMessage":Laft;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Laee;)V

    .line 314
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string/jumbo v0, "LocalBusinessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeViewForJS begin, viewId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz p1, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    instance-of v0, v0, Lade;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 400
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->unRegisterComponents(Ljava/lang/String;)V

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    instance-of v0, v0, Lade;

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->unRegisterComponents(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    instance-of v0, v0, Lade;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    check-cast v0, Lade;

    invoke-virtual {v0}, Lade;->onDestroy()V

    .line 374
    :cond_1
    const-string/jumbo v0, "LocalBusinessView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCurrentAddView begin : currentCanDeleteView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCurrentCanDeleteView(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->unRegisterComponents(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsCode"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 639
    :cond_0
    const-string/jumbo v0, "LocalBusinessView"

    const-string/jumbo v1, "protectLoadJavascript save func to list"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 435
    const-string/jumbo v1, "LocalBusinessView"

    const-string/jumbo v2, "clearData()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laee;

    .line 441
    .local v0, "chatMessage":Laee;
    if-eqz v0, :cond_2

    .line 442
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Laee;)V

    goto :goto_1

    .line 446
    .end local v0    # "chatMessage":Laee;
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 447
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    instance-of v1, v1, Lade;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    check-cast v1, Lade;

    invoke-virtual {v1}, Lade;->onDestroy()V

    goto :goto_0
.end method

.method public getCurrentAddDisplayComponent()Lcom/iflytek/framework/ui/DisplayComponent;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    return-object v0
.end method

.method public getCurrentCanDeleteDisplayComponent()Lcom/iflytek/framework/ui/DisplayComponent;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->r:Lcom/iflytek/framework/ui/DisplayComponent;

    return-object v0
.end method

.method public getDisplayComponentCounts()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNeedInject()Z
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 459
    invoke-super {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->onDestroy()V

    .line 476
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    const-string/jumbo v1, "LocalBusinessView"

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_0
    invoke-super {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->onDetachedFromWindow()V

    .line 416
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    :goto_1
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->v:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->v:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 429
    iput-object v3, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->v:Landroid/os/Handler;

    .line 432
    :cond_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LocalBusinessView"

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LocalBusinessView"

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setIsNeedInject(Z)V
    .locals 1
    .param p1, "isNeedInject"    # Z

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->j:Z

    .line 674
    return-void
.end method

.method public setNeedSoftKeyboardShow(Z)V
    .locals 0
    .param p1, "needSoftKeyboardShow"    # Z

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->x:Z

    .line 650
    return-void
.end method
