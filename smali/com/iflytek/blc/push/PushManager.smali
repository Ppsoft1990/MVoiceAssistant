.class public interface abstract Lcom/iflytek/blc/push/PushManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addMustPushTimeRange(Lcom/iflytek/blc/push/entity/BlcTimeRange;)V
.end method

.method public abstract destroy(Landroid/content/Context;)V
.end method

.method public abstract getNoticeResultManager()Lcom/iflytek/blc/push/NoticeResultManager;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract resumePush(Landroid/content/Context;)V
.end method

.method public abstract sendRequest(Landroid/content/Context;)V
.end method

.method public abstract setNoticeParams(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPushInterval(I)V
.end method

.method public abstract setPushObserver(Lcom/iflytek/blc/push/PushObserver;)V
.end method

.method public abstract setPushTime(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/AllowDay;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSaveNotice(Z)V
.end method

.method public abstract setSaveNoticeByTypeId(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopPush(Landroid/content/Context;)V
.end method
