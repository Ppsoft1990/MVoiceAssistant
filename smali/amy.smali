.class public interface abstract Lamy;
.super Ljava/lang/Object;
.source "OnBookBizResultListener.java"


# virtual methods
.method public abstract onBuyResult(Ljava/lang/String;)V
.end method

.method public abstract onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
.end method

.method public abstract onChapterListResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChargeInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
.end method

.method public abstract onContentInfoResult(Lamm;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onNoMoreChapterResult()V
.end method

.method public abstract onTipVoiceResult(Ljava/lang/String;)V
.end method

.method public abstract onUnLoginResult()V
.end method
