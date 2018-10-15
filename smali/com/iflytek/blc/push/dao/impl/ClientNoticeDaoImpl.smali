.class public Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;
.super Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;

# interfaces
.implements Lcom/iflytek/blc/push/dao/ClientNoticeDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl",
        "<",
        "Lcom/iflytek/blc/push/entity/ClientNotice;",
        ">;",
        "Lcom/iflytek/blc/push/dao/ClientNoticeDao;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "Ljava/lang/Class",
            "<",
            "Lcom/iflytek/blc/push/entity/ClientNotice;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getByMsgId(Ljava/lang/String;)Lcom/iflytek/blc/push/entity/ClientNotice;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "msgId = ?"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v8

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/entity/ClientNotice;

    move-object v1, v0

    goto :goto_0
.end method

.method public getUnReadNoticeCount()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " where readFlag = 0 and closeFlag = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceDisplayCount(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "set displayCount = displayCount - 1 where msgId = ? and displayCount > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reduceEffectiveNoticesDisplayCount()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "set displayCount = displayCount - 1 where  displayCount > 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " and msgId in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "(SELECT msgId FROM t_basenotice where ? between startTime and endTime)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v3}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setEffectiveNoticesRead()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "set readFlag = 1 where readFlag = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " and msgId in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "( SELECT msgId FROM t_basenotice where ? > startTime)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v3}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setNoticeClosed(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " set closeFlag = 1 where msgId = ? and closeFlag = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNoticeHasRead(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " set readFlag = 1 where msgId = ? and readFlag = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateNoticeLocalUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "set localPicUri = ? where msgId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/blc/push/dao/impl/ClientNoticeDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
