.class public Lcom/iflytek/blc/cache/CacheItemDaoImpl;
.super Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;

# interfaces
.implements Lcom/iflytek/blc/cache/CacheItemDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl",
        "<",
        "Lcom/iflytek/blc/cache/CacheItem;",
        ">;",
        "Lcom/iflytek/blc/cache/CacheItemDao;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    const-string/jumbo v0, "CacheItemDaoImpl"

    iput-object v0, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v1, "clearAll"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v2, "clearAll | enter Critical Section"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->clear()V

    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v2, "clearAll | leave Critical Section"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deleteByUrl(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "CacheItemDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteByUrl | url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v2, "deleteByUrl | enter Critical Section"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "where url = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, v2}, Lcom/iflytek/blc/orm/dao/impl/BaseDaoImpl;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v2, "deleteByUrl | leave Critical Section"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;
    .locals 10

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string/jumbo v0, "CacheItemDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getByUrl | url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "url = ?"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v4

    iget-object v9, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->b:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v1, "getByUrl | enter Critical Section"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/cache/CacheItem;

    :goto_1
    const-string/jumbo v1, "CacheItemDaoImpl"

    const-string/jumbo v2, "getByUrl | leave Critical Section"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_1
    move-object v0, v8

    goto :goto_1
.end method

.method public save(Lcom/iflytek/blc/cache/CacheItem;)J
    .locals 5

    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v1, "save"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v0, "CacheItemDaoImpl"

    const-string/jumbo v1, "save | enter Critical Section"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/iflytek/blc/cache/CacheItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/blc/cache/CacheItem;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->delete(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    const-string/jumbo v3, "CacheItemDaoImpl"

    const-string/jumbo v4, "save | leave Critical Section"

    invoke-static {v3, v4}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
