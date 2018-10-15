.class public Lcom/iflytek/viafly/HomeRootView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "HomeRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/HomeRootView$a;
    }
.end annotation


# static fields
.field public static a:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private d:Lcom/iflytek/viafly/HomeRootView$a;

.field private e:Lcom/iflytek/viafly/HomeRootView$a;

.field private f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/HomeRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->b:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/HomeRootView;->c:Z

    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/HomeRootView;->b:Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/HomeRootView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/HomeRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-direct {v1, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/HomeRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOVICE_GUIDE_WINDOW"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    iget-object v2, p0, Lcom/iflytek/viafly/HomeRootView;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iflytek/viafly/HomeRootView;->a:Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .line 77
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/HomeRootView;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V

    .line 174
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 178
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    const-string/jumbo v0, "HomeRootView"

    const-string/jumbo v1, "------------->> dispatchTouchEvent()"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 94
    :pswitch_1
    const-string/jumbo v0, "HomeRootView"

    const-string/jumbo v1, "dispatchTouchEvent  MotionEvent.ACTION_DOWN"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_2
    const-string/jumbo v0, "HomeRootView"

    const-string/jumbo v1, "dispatchTouchEvent  MotionEvent.ACTION_MOVE"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-boolean v0, p0, Lcom/iflytek/viafly/HomeRootView;->c:Z

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "HomeRootView"

    const-string/jumbo v1, "saveLog"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->b:Landroid/content/Context;

    invoke-static {v0}, Lxd;->a(Landroid/content/Context;)Lxd;

    move-result-object v0

    invoke-virtual {v0}, Lxd;->b()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/HomeRootView;->c:Z

    goto :goto_0

    .line 106
    :pswitch_3
    const-string/jumbo v0, "HomeRootView"

    const-string/jumbo v1, "dispatchTouchEvent MotionEvent.ACTION_UP"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    return-object v0
.end method

.method public getMicController()Lqr;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getMicController()Lqr;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->onDetachedFromWindow()V

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/HomeRootView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->removeAllViews()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->f:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->d:Lcom/iflytek/viafly/HomeRootView$a;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->d:Lcom/iflytek/viafly/HomeRootView$a;

    invoke-interface {v1}, Lcom/iflytek/viafly/HomeRootView$a;->a()Z

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->e:Lcom/iflytek/viafly/HomeRootView$a;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/iflytek/viafly/HomeRootView;->e:Lcom/iflytek/viafly/HomeRootView$a;

    invoke-interface {v1}, Lcom/iflytek/viafly/HomeRootView$a;->a()Z

    .line 170
    :cond_2
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeRootView"

    const-string/jumbo v2, "HomeRootView removeAllViews() throws exception"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    const-string/jumbo v2, "HomeRootView"

    const-string/jumbo v3, "----------------->>>onTouchEvent()"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 122
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 123
    .local v1, "y":F
    const-string/jumbo v2, "HomeRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----------------->>>x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 129
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    .line 134
    :pswitch_2
    const-string/jumbo v2, "HomeRootView"

    const-string/jumbo v3, "onTouchEvent  MotionEvent.ACTION_UP"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setTitleListener(Lcom/iflytek/viafly/HomeRootView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/HomeRootView$a;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/HomeRootView;->d:Lcom/iflytek/viafly/HomeRootView$a;

    .line 60
    return-void
.end method

.method public setWidgetContainerListener(Lcom/iflytek/viafly/HomeRootView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/HomeRootView$a;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/HomeRootView;->e:Lcom/iflytek/viafly/HomeRootView$a;

    .line 64
    return-void
.end method
