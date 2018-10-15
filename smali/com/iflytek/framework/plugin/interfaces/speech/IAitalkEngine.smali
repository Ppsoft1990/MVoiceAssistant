.class public interface abstract Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;
.super Ljava/lang/Object;
.source "IAitalkEngine.java"


# virtual methods
.method public abstract addLexicon(Landroid/os/Bundle;)V
.end method

.method public abstract appendData([BI)I
.end method

.method public abstract buildGrammar(Landroid/os/Bundle;)V
.end method

.method public abstract checkResouce(Ljava/lang/String;I)I
.end method

.method public abstract destroy()V
.end method

.method public abstract endData()I
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initEngine(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isInited()Z
.end method

.method public abstract isJniLoaded()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onActivityCreate()V
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract startTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;Landroid/os/Bundle;)V
.end method

.method public abstract stopTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;)V
.end method
