.class public interface abstract Lzc;
.super Ljava/lang/Object;
.source "NoticeItemDao.java"


# virtual methods
.method public abstract a(II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;
.end method

.method public abstract a(Ljava/util/List;Ljava/util/List;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;II[",
            "Lcom/iflytek/xorm/page/OrderBy;",
            ")",
            "Lcom/iflytek/xorm/page/Pagination;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
.end method

.method public abstract c(Ljava/lang/String;)V
.end method
