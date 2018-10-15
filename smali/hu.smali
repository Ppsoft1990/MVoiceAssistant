.class public Lhu;
.super Ljava/lang/Object;
.source "MessageItemCache.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhu;->a:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhu;->b:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lhu;->c:Z

    return-void
.end method

.method public static a()I
    .locals 8

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, "ret":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v4, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    sget-object v6, Lhu;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 45
    :try_start_0
    sget-object v5, Lhu;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 46
    .local v2, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    invoke-virtual {v2}, Lcom/iflytek/base/mms/entities/SmsItem;->getThreadId()J

    move-result-wide v0

    .line 47
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "id":J
    .end local v2    # "item":Lcom/iflytek/base/mms/entities/SmsItem;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 51
    return v3
.end method

.method public static a(Lcom/iflytek/base/mms/entities/SmsItem;)I
    .locals 5
    .param p0, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":I
    sget-object v2, Lhu;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 33
    :try_start_0
    sget-object v1, Lhu;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string/jumbo v1, "MessageItemCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetNewMsg ok--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lhu;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v1, Lhu;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lhu;->c:Z

    .line 37
    monitor-exit v2

    .line 38
    return v0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v1, Lhu;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lhu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lhu;->c:Z

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v1, Lhu;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lhu;->a:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
