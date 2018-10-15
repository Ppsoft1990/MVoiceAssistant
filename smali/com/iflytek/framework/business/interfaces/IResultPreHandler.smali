.class public interface abstract Lcom/iflytek/framework/business/interfaces/IResultPreHandler;
.super Ljava/lang/Object;
.source "IResultPreHandler.java"


# virtual methods
.method public abstract afterLocateSearchResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end method

.method public abstract getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)",
            "Lcom/iflytek/yd/speech/ViaAsrResult;"
        }
    .end annotation
.end method

.method public abstract preHandleLastResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iflytek/framework/business/interfaces/IResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;",
            "Lcom/iflytek/framework/business/interfaces/IResultCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract preHandleParticalResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation
.end method
