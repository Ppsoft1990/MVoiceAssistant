.class public Lamk;
.super Ljava/lang/Object;
.source "BookCacheManager.java"


# static fields
.field private static c:Lamk;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Laml;

.field private volatile d:Lamm;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

.field private h:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "BookCacheManager"

    iput-object v0, p0, Lamk;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Laml;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laml;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamk;->b:Laml;

    .line 46
    return-void
.end method

.method public static a()Lamk;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lamk;->c:Lamk;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lamk;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lamk;->c:Lamk;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lamk;

    invoke-direct {v0}, Lamk;-><init>()V

    sput-object v0, Lamk;->c:Lamk;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lamk;->c:Lamk;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lamo;)I
    .locals 3
    .param p1, "bookMarkInfo"    # Lamo;

    .prologue
    const/4 v0, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BookCacheManager"

    const-string/jumbo v2, "saveCollect "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_1

    .line 138
    iget-object v1, p0, Lamk;->b:Laml;

    invoke-virtual {p1}, Lamo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laml;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lamk;->b:Laml;

    invoke-virtual {v1, p1}, Laml;->a(Lamo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v1, p0, Lamk;->b:Laml;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;Lamo;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)I
    .locals 3
    .param p1, "chapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveChapter chapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laml;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 78
    :goto_0
    monitor-exit p0

    return v0

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lamk;->b:Laml;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/listenbook/entity/Chapter;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    const-string/jumbo v1, "BookCacheManager"

    const-string/jumbo v2, "saveChapterList "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 102
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    invoke-virtual {p0, v0}, Lamk;->a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)I

    goto :goto_0

    .line 105
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "BookCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getChapter id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 308
    iput-wide p1, p0, Lamk;->h:J

    .line 309
    return-void
.end method

.method public declared-synchronized a(Lamm;)V
    .locals 5
    .param p1, "bookInfo"    # Lamm;

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "BookCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " saveBookInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p0}, Lamk;->g()Lamm;

    move-result-object v1

    .line 223
    .local v1, "oldBookInfo":Lamm;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lamm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lamm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lamm;->l()Z

    move-result v2

    invoke-virtual {p1, v2}, Lamm;->b(Z)V

    .line 226
    :cond_0
    invoke-static {p1}, Lamt;->a(Lamm;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_BOOK_INFO_CACHE"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lamk;->d:Lamm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "oldBookInfo":Lamm;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    .restart local v0    # "jsonString":Ljava/lang/String;
    .restart local v1    # "oldBookInfo":Lamm;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "BookCacheManager"

    const-string/jumbo v3, " bookInfo to json error"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "oldBookInfo":Lamm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V
    .locals 0
    .param p1, "chapterAudio"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 276
    iput-object p1, p0, Lamk;->g:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .line 277
    return-void
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V
    .locals 1
    .param p1, "historyListenBookItem"    # Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->b(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    const-string/jumbo v1, "BookCacheManager"

    const-string/jumbo v2, "saveCollect "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamo;

    .line 190
    .local v0, "bookMarkInfo":Lamo;
    invoke-virtual {p0, v0}, Lamk;->a(Lamo;)I

    goto :goto_0

    .line 194
    .end local v0    # "bookMarkInfo":Lamo;
    :cond_0
    const/4 v1, 0x0

    .line 197
    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "getChapterList "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v2, "BookCacheManager"

    const-string/jumbo v3, "isExistInChapterList "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lamk;->b()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "chapterList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 121
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    invoke-virtual {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/4 v2, 0x1

    .line 126
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "removeAllCollects "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "saveCollect "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/lang/String;)Lamo;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "getCollect "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->c(Ljava/lang/String;)Lamo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "removeAllHistory "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestChapterId"    # Ljava/lang/String;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lamk;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, " clearBookInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_BOOK_INFO_CACHE"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object v2, p0, Lamk;->d:Lamm;

    .line 240
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestContentId"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lamk;->e:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public g()Lamm;
    .locals 4

    .prologue
    .line 243
    const-string/jumbo v1, "BookCacheManager"

    const-string/jumbo v2, " getBookInfo "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lamk;->d:Lamm;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lamk;->d:Lamm;

    .line 252
    :goto_0
    return-object v1

    .line 249
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_BOOK_INFO_CACHE"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lamt;->c(Ljava/lang/String;)Lamm;

    move-result-object v1

    iput-object v1, p0, Lamk;->d:Lamm;

    .line 251
    const-string/jumbo v1, "BookCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBookInfo detail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamk;->d:Lamm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lamk;->d:Lamm;

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .locals 1
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->f(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamk;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "saveCollect "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0, p1}, Laml;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lamk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lamk;->g:Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lamk;->g()Lamm;

    move-result-object v0

    .line 285
    .local v0, "bookInfo":Lamm;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lamm;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 289
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "clearCollects "

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lamk;->c()V

    .line 291
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "clearCollects "

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lamk;->d()V

    .line 296
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 299
    const-string/jumbo v0, "BookCacheManager"

    const-string/jumbo v1, "clearChapterList "

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->b()V

    .line 301
    return-void
.end method

.method public o()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lamk;->h:J

    return-wide v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lamk;->b:Laml;

    invoke-virtual {v0}, Laml;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
