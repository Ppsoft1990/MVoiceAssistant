.class public Lcom/iflytek/common/speech/test/SpeechTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpeechTestReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 51
    const-string/jumbo v6, "SpeechTestReceiver"

    const-string/jumbo v7, "onReceive"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "SpeechTestReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "---------action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string/jumbo v6, "com.iflytek.speechtest.action"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v6, v7, v9}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    .local v1, "currOpenState":Z
    const/4 v6, 0x1

    if-ne v6, v1, :cond_0

    .line 67
    const-string/jumbo v6, "com.iflytek.speechtest.focus"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "focus":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/iflytek/common/speech/test/SpeechTestService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v4, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v6, "focus"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "currOpenState":Z
    .end local v2    # "focus":Ljava/lang/String;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "com.iflytek.speechtest.action.listen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const-string/jumbo v6, "com.iflytek.speechtest.open"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 74
    .local v3, "open":Z
    const-string/jumbo v6, "com.iflytek.timetest.open"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 75
    .local v5, "timeTest":Z
    const-string/jumbo v6, "SpeechTestReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.iflytek.speechtest.action.listen---------timeTest = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; open = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_OPEN_SPEECHTEST_SERVICE"

    invoke-virtual {v6, v7, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 77
    invoke-static {v5}, Lpu;->b(Z)V

    .line 78
    if-nez v3, :cond_0

    .line 79
    invoke-static {}, Lpt;->a()V

    goto :goto_0
.end method
