.class public Lcom/iflytek/blc/push/dao/impl/BaseNoticeDaoImpl;
.super Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;

# interfaces
.implements Lcom/iflytek/blc/push/dao/BaseNoticeDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl",
        "<",
        "Lcom/iflytek/blc/push/entity/BaseNotice;",
        ">;",
        "Lcom/iflytek/blc/push/dao/BaseNoticeDao;"
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
            "Lcom/iflytek/blc/push/entity/BaseNotice;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/blc/push/dao/impl/BaseNoticeDaoImpl;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "where msgId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v1}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
