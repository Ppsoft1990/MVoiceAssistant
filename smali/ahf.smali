.class public Lahf;
.super Laht;
.source "HomeLockScreenGuideHelper.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahf;->a:Z

    .line 37
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Lahf;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lazk;->a(Landroid/content/Context;)I

    move-result v2

    .line 86
    .local v2, "startHomeWay":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 87
    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Lagv;->o()Lahi;

    move-result-object v3

    invoke-virtual {v3}, Lahi;->h()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccVERSION_CODE"

    .line 94
    invoke-virtual {p0}, Lahf;->p()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhl;->h(Landroid/content/Context;)I

    move-result v5

    .line 93
    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V

    .line 97
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lahf;->d(Z)V

    .line 107
    :goto_0
    invoke-static {}, Lagm;->k()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "lockscreenState":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lahf;->d(Z)V

    .line 115
    .end local v1    # "lockscreenState":Ljava/lang/String;
    .end local v2    # "startHomeWay":I
    :cond_2
    :goto_1
    return-void

    .line 104
    .restart local v2    # "startHomeWay":I
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lahf;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v2    # "startHomeWay":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeLockScreenGuideHelper"

    const-string/jumbo v4, "showLockScreenGuide()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.LOCKSCREEN_SPEECH_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    .line 60
    invoke-virtual {p0}, Lahf;->q()Lahw;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lahw;->sendEmptyMessage(I)Z

    .line 61
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LOCKSCREEN_REFRESH_INDICATOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-static {}, Lagv;->e()Lahf;

    move-result-object v0

    invoke-direct {v0}, Lahf;->h()V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.LOCKSCREEN_MOVEBACK_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lahf;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/Home;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lahf;->a:Z

    .line 49
    return-void
.end method
