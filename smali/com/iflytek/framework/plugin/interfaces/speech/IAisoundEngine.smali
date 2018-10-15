.class public interface abstract Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;
.super Ljava/lang/Object;
.source "IAisoundEngine.java"


# virtual methods
.method public abstract destory()V
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)I
.end method

.method public abstract isJniLoaded()Z
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setResource(Landroid/util/SparseArray;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract speak(Ljava/lang/String;Landroid/os/Bundle;Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundListener;)I
.end method

.method public abstract stop()I
.end method
