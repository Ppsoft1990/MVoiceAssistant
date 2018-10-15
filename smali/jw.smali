.class public Ljw;
.super Ljava/lang/Object;
.source "AitalkProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLexicon(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 88
    return-void
.end method

.method public appendData([BI)I
    .locals 1
    .param p1, "buff"    # [B
    .param p2, "length"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public buildGrammar(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 84
    return-void
.end method

.method public checkResouce(Ljava/lang/String;I)I
    .locals 1
    .param p1, "res_path"    # Ljava/lang/String;
    .param p2, "res_ver"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public endData()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public initEngine(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .prologue
    .line 32
    const-string/jumbo v0, "SPEECH_AitalkProxy"

    const-string/jumbo v1, "startTalk error ERROR_AITALK_RES"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-eqz p1, :cond_0

    .line 34
    const v0, 0xc3510

    invoke-interface {p1, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;->onInitFinish(I)V

    .line 36
    :cond_0
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isJniLoaded()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public startTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string/jumbo v0, "SPEECH_AitalkProxy"

    const-string/jumbo v1, "startTalk error ERROR_AITALK_RES"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const v0, 0xc3510

    invoke-interface {p1, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;->onError(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public stopTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    .prologue
    .line 69
    return-void
.end method
