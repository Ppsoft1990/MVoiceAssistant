.class public Laah;
.super Ljava/lang/Object;
.source "PhoneTypeHashMapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laah$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    return-void
.end method

.method public static a()Laah;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Laah$a;->a:Laah;

    return-object v0
.end method

.method static synthetic a(Laah;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Laah;

    .prologue
    .line 15
    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .locals 2
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Laah;->c()V

    .line 57
    :cond_1
    iget-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    .line 62
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;)V
    .locals 1
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    .prologue
    .line 41
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 42
    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Laah;->c()V

    .line 45
    :cond_0
    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Laah;->b()V

    .line 50
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Laah$1;

    invoke-direct {v1, p0}, Laah$1;-><init>(Laah;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    sget-object v3, Lil;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "numTypeCache":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "numTypeCache":Ljava/lang/Object;
    iput-object v1, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v2, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v2, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_1

    .line 89
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Laah;->a:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    throw v2
.end method
