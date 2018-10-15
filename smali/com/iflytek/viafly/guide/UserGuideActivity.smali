.class public Lcom/iflytek/viafly/guide/UserGuideActivity;
.super Landroid/app/Activity;
.source "UserGuideActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/iflytek/viafly/guide/UserGuideView;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string/jumbo v0, "UserGuideActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->c:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v3, Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/guide/UserGuideView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    .line 33
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    iget v4, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->c:I

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/guide/UserGuideView;->setUserGuideType(I)V

    .line 35
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/guide/UserGuideActivity;->setContentView(Landroid/view/View;)V

    .line 37
    new-instance v0, Lcom/iflytek/viafly/guide/UserGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/guide/UserGuideActivity$1;-><init>(Lcom/iflytek/viafly/guide/UserGuideActivity;)V

    .line 44
    .local v0, "enterListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/guide/UserGuideView;->setEnterListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v3, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "append OPERATION_USER_GUIDE OpLog, opCode == FD36014"

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "user_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v3, "userguide_enter"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p0}, Lxg;->a(Landroid/content/Context;)Lxg;

    move-result-object v3

    const-string/jumbo v4, "FD36014"

    .line 57
    invoke-virtual {v3, v4, v1}, Lxg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 64
    .local v2, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 66
    .end local v2    # "statusBarColor":I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->b()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    .line 103
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/guide/UserGuideView;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->b:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->a()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 91
    return-void
.end method
