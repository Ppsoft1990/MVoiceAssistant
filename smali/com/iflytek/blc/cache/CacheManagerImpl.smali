.class public Lcom/iflytek/blc/cache/CacheManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/cache/CacheManager;


# static fields
.field private static b:Lcom/iflytek/blc/cache/CacheManagerImpl;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/blc/cache/CacheItemDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/blc/cache/CacheManagerImpl;

    invoke-direct {v0}, Lcom/iflytek/blc/cache/CacheManagerImpl;-><init>()V

    sput-object v0, Lcom/iflytek/blc/cache/CacheManagerImpl;->b:Lcom/iflytek/blc/cache/CacheManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CacheManager"

    iput-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->a:Ljava/lang/String;

    const-string/jumbo v0, "blccache"

    iput-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/iflytek/blc/cache/CacheItem;)V
    .locals 4

    const-string/jumbo v0, "CacheManager"

    const-string/jumbo v1, "deleteRes"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/blc/cache/CacheItem;->getContentUri()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteRes | delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/iflytek/blc/cache/CacheManagerImpl;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/cache/CacheManagerImpl;->b:Lcom/iflytek/blc/cache/CacheManagerImpl;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 7

    const-string/jumbo v0, "CacheManager"

    const-string/jumbo v1, "clearAll"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CacheManager"

    const-string/jumbo v1, "clearCacheDir"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v0}, Lcom/iflytek/blc/cache/CacheItemDao;->clearAll()V

    goto :goto_0

    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "CacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "clearCacheDir | delete "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public delete(I)V
    .locals 3

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delete | id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/cache/CacheManagerImpl;->get(I)Lcom/iflytek/blc/cache/CacheItem;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/cache/CacheManagerImpl;->a(Lcom/iflytek/blc/cache/CacheItem;)V

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/cache/CacheItemDao;->delete(I)V

    goto :goto_0
.end method

.method public deleteByUrl(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteByUrl | url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/cache/CacheManagerImpl;->getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/cache/CacheManagerImpl;->a(Lcom/iflytek/blc/cache/CacheItem;)V

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/cache/CacheItemDao;->deleteByUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(I)Lcom/iflytek/blc/cache/CacheItem;
    .locals 3

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get | id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/cache/CacheItemDao;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/cache/CacheItem;

    goto :goto_0
.end method

.method public getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;
    .locals 3

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getByUrl | url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-interface {v0, p1}, Lcom/iflytek/blc/cache/CacheItemDao;->getByUrl(Ljava/lang/String;)Lcom/iflytek/blc/cache/CacheItem;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "CacheManager"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/iflytek/blc/cache/CacheItem;

    aput-object v2, v0, v1

    new-instance v1, Lcom/iflytek/blc/cache/CacheItemDaoImpl;

    new-instance v2, Lcom/iflytek/blc/cache/CacheDbHelper;

    invoke-direct {v2, p1, v0}, Lcom/iflytek/blc/cache/CacheDbHelper;-><init>(Landroid/content/Context;[Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Lcom/iflytek/blc/cache/CacheItemDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "blccache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->d:Ljava/lang/String;

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initialize | cacheDir = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDownload(Ljava/lang/String;Lcom/iflytek/blc/cache/DownloadObserver;)V
    .locals 3

    const-string/jumbo v0, "CacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startDownload | url = "

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
    new-instance v0, Lcom/iflytek/blc/cache/DownloadTask;

    iget-object v1, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/blc/cache/CacheManagerImpl;->e:Lcom/iflytek/blc/cache/CacheItemDao;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/iflytek/blc/cache/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/cache/DownloadObserver;Lcom/iflytek/blc/cache/CacheItemDao;)V

    sget-object v1, Lcom/iflytek/blc/thread/ThreadPoolManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
