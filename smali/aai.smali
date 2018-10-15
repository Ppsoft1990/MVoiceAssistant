.class public Laai;
.super Ljava/lang/Object;
.source "PhoneTypeMarkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laai$a;
    }
.end annotation


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laac;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laai;->e:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laai;->f:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laai;->c:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method public static a()Laai;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Laai$a;->a:Laai;

    return-object v0
.end method

.method private a(Laac;)V
    .locals 1
    .param p1, "type"    # Laac;

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 221
    :cond_2
    invoke-direct {p0}, Laai;->h()V

    .line 223
    :cond_3
    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Laai;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Laai;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Laaa;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "tempString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v3, Lil;->h:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    .end local v0    # "tempString":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 4

    .prologue
    .line 269
    iget-object v2, p0, Laai;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 272
    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laaa;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "tempString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v3, Lil;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    .end local v0    # "tempString":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g()V
    .locals 5

    .prologue
    .line 281
    iget-object v3, p0, Laai;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    sget-object v4, Lil;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 285
    .local v1, "numTypeCache":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 287
    :try_start_1
    check-cast v1, Ljava/lang/String;

    .end local v1    # "numTypeCache":Ljava/lang/Object;
    invoke-static {v1}, Laaa;->a(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    :try_start_2
    iget-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    .line 293
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 299
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    :try_start_4
    iget-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    .line 293
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 292
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v4, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v4, :cond_1

    .line 293
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    throw v2

    .line 297
    .restart local v1    # "numTypeCache":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 304
    iget-object v3, p0, Laai;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 306
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    sget-object v4, Lil;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 308
    .local v1, "uploadCache":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 310
    :try_start_1
    check-cast v1, Ljava/lang/String;

    .end local v1    # "uploadCache":Ljava/lang/Object;
    invoke-static {v1}, Laaa;->b(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iput-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    :try_start_2
    iget-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 322
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :try_start_4
    iget-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 315
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v4, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v4, :cond_1

    .line 316
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    throw v2

    .line 320
    .restart local v1    # "uploadCache":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 327
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laac;
    .locals 2
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 165
    if-eqz p1, :cond_2

    .line 166
    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    invoke-direct {p0}, Laai;->g()V

    .line 169
    :cond_1
    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

    .line 174
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)Ljava/util/List;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v1, p0, Laai;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "phoneType":Ljava/util/List;, "Ljava/util/List<Laac;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laai;->c:Ljava/util/HashMap;

    .line 192
    :cond_2
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "typeList":Ljava/util/List;, "Ljava/util/List<Laac;>;"
    const-string/jumbo v1, "PhoneTypeMarkManager"

    const-string/jumbo v2, "removeUpLoadHashMap"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 147
    iget-object v1, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    invoke-direct {p0}, Laai;->h()V

    .line 150
    :cond_1
    iget-object v1, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

    .line 152
    .local v0, "type":Laac;
    iget-object v2, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    const-string/jumbo v2, "PhoneTypeMarkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the removed upload num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Laac;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0    # "type":Laac;
    :cond_2
    invoke-direct {p0}, Laai;->e()V

    .line 161
    :cond_3
    return-void
.end method

.method public b()V
    .locals 11

    .prologue
    .line 106
    const-string/jumbo v8, "PhoneTypeMarkManager"

    const-string/jumbo v9, "updateNumMap()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v8, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0}, Laai;->g()V

    .line 110
    :cond_1
    iget-object v8, p0, Laai;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "num":Ljava/lang/String;
    sget-object v8, Laai;->d:Landroid/content/Context;

    invoke-static {v8, v5}, Lzu;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    const-string/jumbo v8, "PhoneTypeMarkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNumMap() the num is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laac;

    .line 118
    .local v7, "type":Laac;
    if-eqz v7, :cond_2

    .line 119
    invoke-virtual {v7}, Laac;->b()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "numType":Ljava/lang/String;
    invoke-virtual {v7}, Laac;->c()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "markType":Ljava/lang/String;
    invoke-direct {p0}, Laai;->i()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "markTime":Ljava/lang/String;
    const-string/jumbo v8, "ADD_MARK"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    new-instance v4, Laac;

    const-string/jumbo v8, "REMOVE_MARK"

    invoke-direct {v4, v5, v8, v6, v2}, Laac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v4, "markedType":Laac;
    invoke-interface {v0, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-direct {p0, v4}, Laai;->a(Laac;)V

    goto :goto_0

    .line 132
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laac;>;"
    .end local v2    # "markTime":Ljava/lang/String;
    .end local v3    # "markType":Ljava/lang/String;
    .end local v4    # "markedType":Laac;
    .end local v5    # "num":Ljava/lang/String;
    .end local v6    # "numType":Ljava/lang/String;
    .end local v7    # "type":Laac;
    :cond_3
    invoke-direct {p0}, Laai;->f()V

    .line 133
    return-void
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0}, Laai;->h()V

    .line 140
    :cond_1
    iget-object v0, p0, Laai;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Laai;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    :cond_0
    return-void
.end method
