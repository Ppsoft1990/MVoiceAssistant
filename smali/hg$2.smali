.class Lhg$2;
.super Ljava/lang/Object;
.source "ContactUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhg;


# direct methods
.method constructor <init>(Lhg;)V
    .locals 0
    .param p1, "this$0"    # Lhg;

    .prologue
    .line 220
    iput-object p1, p0, Lhg$2;->a:Lhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 225
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    sget-object v4, Lil;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "contactNameCache":Ljava/lang/Object;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    sget-object v4, Lil;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "contactNumberCache":Ljava/lang/Object;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v3, p0, Lhg$2;->a:Lhg;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "contactNameCache":Ljava/lang/Object;
    invoke-static {v3, v0}, Lhg;->a(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 232
    iget-object v3, p0, Lhg$2;->a:Lhg;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "contactNumberCache":Ljava/lang/Object;
    invoke-static {v3, v1}, Lhg;->b(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v3, p0, Lhg$2;->a:Lhg;

    invoke-static {v3}, Lhg;->a(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 237
    iget-object v3, p0, Lhg$2;->a:Lhg;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3, v4}, Lhg;->a(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    :cond_0
    iget-object v3, p0, Lhg$2;->a:Lhg;

    invoke-static {v3}, Lhg;->b(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 240
    iget-object v3, p0, Lhg$2;->a:Lhg;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3, v4}, Lhg;->b(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    iget-object v3, p0, Lhg$2;->a:Lhg;

    invoke-static {v3}, Lhg;->a(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lhg$2;->a:Lhg;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3, v4}, Lhg;->a(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    :cond_2
    iget-object v3, p0, Lhg$2;->a:Lhg;

    invoke-static {v3}, Lhg;->b(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 240
    iget-object v3, p0, Lhg$2;->a:Lhg;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v3, v4}, Lhg;->b(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lhg$2;->a:Lhg;

    invoke-static {v4}, Lhg;->a(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    if-nez v4, :cond_3

    .line 237
    iget-object v4, p0, Lhg$2;->a:Lhg;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4, v5}, Lhg;->a(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    :cond_3
    iget-object v4, p0, Lhg$2;->a:Lhg;

    invoke-static {v4}, Lhg;->b(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    if-nez v4, :cond_4

    .line 240
    iget-object v4, p0, Lhg$2;->a:Lhg;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4, v5}, Lhg;->b(Lhg;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    :cond_4
    throw v3
.end method
