.class public interface abstract Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;
.super Ljava/lang/Object;
.source "IWakeListener.java"


# virtual methods
.method public abstract onWakeBuffer(Ljava/lang/String;IILjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation
.end method

.method public abstract onWakeError(I)V
.end method

.method public abstract onWakeResult(Ljava/lang/String;I)V
.end method
