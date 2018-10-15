.class public interface abstract Lcom/iflytek/blc/push/dao/ClientNoticeDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/orm/dao/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/blc/orm/dao/BaseDao",
        "<",
        "Lcom/iflytek/blc/push/entity/ClientNotice;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getByMsgId(Ljava/lang/String;)Lcom/iflytek/blc/push/entity/ClientNotice;
.end method

.method public abstract getUnReadNoticeCount()J
.end method

.method public abstract reduceDisplayCount(Ljava/lang/String;)V
.end method

.method public abstract reduceEffectiveNoticesDisplayCount()V
.end method

.method public abstract setEffectiveNoticesRead()V
.end method

.method public abstract setNoticeClosed(Ljava/lang/String;)V
.end method

.method public abstract setNoticeHasRead(Ljava/lang/String;)V
.end method

.method public abstract updateNoticeLocalUri(Ljava/lang/String;Ljava/lang/String;)V
.end method
