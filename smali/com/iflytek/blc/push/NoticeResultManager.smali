.class public interface abstract Lcom/iflytek/blc/push/NoticeResultManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract clearOutOfDated(Ljava/sql/Timestamp;)V
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract delete(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lcom/iflytek/blc/push/entity/NoticeItem;
.end method

.method public abstract getAllNotices(IILcom/iflytek/blc/push/OrderbyType;)Lcom/iflytek/blc/page/Pagination;
.end method

.method public abstract getNotices(Ljava/util/List;Ljava/util/List;IILcom/iflytek/blc/push/OrderbyType;)Lcom/iflytek/blc/page/Pagination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;II",
            "Lcom/iflytek/blc/push/OrderbyType;",
            ")",
            "Lcom/iflytek/blc/page/Pagination;"
        }
    .end annotation
.end method

.method public abstract getUnReadNoticesCount()J
.end method

.method public abstract getUnReadNoticesCount(Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract reduceDisplayCount(Ljava/lang/String;)V
.end method

.method public abstract reduceDisplayCount(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract save(Ljava/util/List;)V
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

.method public abstract setNoticeClosed(Ljava/lang/String;)V
.end method

.method public abstract setNoticeHasRead(Ljava/lang/String;)V
.end method

.method public abstract setNoticeHasRead(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/NoticeStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNoticeLocalUri(Ljava/lang/String;Ljava/lang/String;)V
.end method
