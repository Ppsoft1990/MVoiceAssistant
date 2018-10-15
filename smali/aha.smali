.class public Laha;
.super Laht;
.source "HomeFragmentsManager.java"


# static fields
.field private static a:Lcom/iflytek/yd/ui/BaseFragment;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 30
    return-void
.end method

.method private j()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Laha;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p1, v2, :cond_2

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "intercepted":Z
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 107
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 111
    :cond_1
    if-eqz v1, :cond_2

    .line 112
    const/4 v2, 0x1

    .line 115
    .end local v0    # "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v1    # "intercepted":Z
    :goto_0
    return v2

    :cond_2
    invoke-super {p0, p1, p2}, Laht;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 121
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 124
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 139
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    :cond_0
    invoke-super {p0, p1}, Laht;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 130
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Laht;->b(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 148
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public c(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v3, "com.iflytek.cmcc.wake_enter_home"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.VOICE_COMMAND"

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 70
    .local v2, "needClearFragments":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lte;

    if-eq v3, v4, :cond_1

    .line 72
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/ui/FragmentMediator;->pop()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    .line 73
    .local v1, "fragment":Lcom/iflytek/yd/ui/BaseFragment;
    invoke-virtual {v1}, Lcom/iflytek/yd/ui/BaseFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "fragment":Lcom/iflytek/yd/ui/BaseFragment;
    .end local v2    # "needClearFragments":Z
    :cond_1
    :goto_1
    return-void

    .line 69
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeFragmentsManager"

    const-string/jumbo v4, "handleWakeEnterHome()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public d(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    :try_start_0
    sget-object v1, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v1

    invoke-direct {p0}, Laha;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 86
    const/4 v1, 0x0

    sput-object v1, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laht;->d(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HomeFragmentsManager"

    const-string/jumbo v2, "onNewIntent()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Lh;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Laha;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home;

    invoke-virtual {v0}, Lcom/iflytek/viafly/Home;->getSupportFragmentManager()Lh;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 6

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lagv;->b()Lagz;

    move-result-object v3

    invoke-virtual {v3}, Lagz;->e()Lte;

    move-result-object v2

    .line 36
    .local v2, "homeFragment":Lte;
    invoke-virtual {p0}, Laha;->e()Lh;

    move-result-object v3

    invoke-virtual {v3}, Lh;->a()Lj;

    move-result-object v1

    .line 37
    .local v1, "fragmentTransaction":Lj;
    const v3, 0x6f0b0191

    invoke-virtual {v1, v3, v2}, Lj;->a(ILandroid/support/v4/app/Fragment;)Lj;

    .line 38
    invoke-virtual {v1}, Lj;->b()I

    .line 39
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/yd/ui/FragmentMediator;->push(Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 41
    sget-object v3, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v3

    invoke-direct {p0}, Laha;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 43
    const/4 v3, 0x0

    sput-object v3, Laha;->a:Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "fragmentTransaction":Lj;
    .end local v2    # "homeFragment":Lte;
    :cond_0
    :goto_0
    invoke-super {p0}, Laht;->f()Z

    move-result v3

    return v3

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeFragmentsManager"

    const-string/jumbo v4, "initView()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g()Lcom/iflytek/yd/ui/FragmentMediator;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Laha;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home;

    invoke-virtual {v0}, Lcom/iflytek/viafly/Home;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Laha;->g()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v1

    .line 157
    .local v1, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v1}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeFragmentsManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
