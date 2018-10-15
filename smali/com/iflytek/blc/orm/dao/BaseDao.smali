.class public interface abstract Lcom/iflytek/blc/orm/dao/BaseDao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract count(Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method public abstract delete(I)V
.end method

.method public varargs abstract delete([Ljava/lang/Integer;)V
.end method

.method public abstract execSql(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract find(Ljava/lang/String;[Ljava/lang/String;II[Lcom/iflytek/blc/page/OrderBy;)Lcom/iflytek/blc/page/Pagination;
.end method

.method public abstract find()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getDbHelper()Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public abstract getDeleteSqlBuilder()Ljava/lang/StringBuilder;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getUpdateSqlBuilder()Ljava/lang/StringBuilder;
.end method

.method public abstract insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;Z)J"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)J"
        }
    .end annotation
.end method

.method public abstract isExist(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract query2MapList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
