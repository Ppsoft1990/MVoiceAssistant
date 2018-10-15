.class public interface abstract Lcom/iflytek/blc/push/PushObserver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onFilterResult(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/entity/NoticeItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/entity/NoticeItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPushBegin()Lcom/iflytek/blc/push/entity/BlcPushParam;
.end method

.method public abstract onPushFailed(ILjava/lang/String;)V
.end method

.method public abstract onPushSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation
.end method
