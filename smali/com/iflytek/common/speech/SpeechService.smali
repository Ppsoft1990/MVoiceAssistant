.class public Lcom/iflytek/common/speech/SpeechService;
.super Landroid/app/Service;
.source "SpeechService.java"


# instance fields
.field private a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string/jumbo v0, ""

    .line 33
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 34
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    const-string/jumbo v2, "com.iflytek.cmcc.SpeechService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    new-instance v1, Liz;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/common/speech/SpeechService;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {v1, p0, p1, v2, v3}, Liz;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljr;Ljs;)V

    .line 42
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, "com.iflytek.component.speechrecognizer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    new-instance v1, Lit;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {v1, p0, p1, v2}, Lit;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .line 65
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_0
    const-string/jumbo v2, "SpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBind intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " binder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v1

    .line 46
    :cond_3
    const-string/jumbo v2, "com.iflytek.component.speechsynthesizer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    new-instance v1, Liu;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {v1, p0, p1, v2}, Liu;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    .restart local v1    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 50
    :cond_4
    const-string/jumbo v2, "com.iflytek.component.speechunderstander"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    new-instance v1, Liv;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {v1, p0, p1, v2}, Liv;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .restart local v1    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 54
    :cond_5
    const-string/jumbo v2, "com.iflytek.component.textunderstander"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    new-instance v1, Liw;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {v1, p0, p1, v2}, Liw;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .restart local v1    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 58
    :cond_6
    const-string/jumbo v2, "com.iflytek.component.vadchecker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 59
    new-instance v1, Liy;

    .end local v1    # "binder":Landroid/os/IBinder;
    invoke-direct {v1, p0, p1}, Liy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .restart local v1    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 62
    :cond_7
    const-string/jumbo v2, "com.iflytek.component.musicrecognizer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    new-instance v1, Lis;

    .end local v1    # "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {v1, p0, p1, v2}, Lis;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .restart local v1    # "binder":Landroid/os/IBinder;
    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/common/speech/SpeechService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/speech/SpeechService;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .line 74
    iget-object v0, p0, Lcom/iflytek/common/speech/SpeechService;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 80
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string/jumbo v0, "SpeechService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnbind intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
