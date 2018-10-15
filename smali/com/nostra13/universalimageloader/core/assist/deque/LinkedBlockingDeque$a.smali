.class abstract Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

.field private d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 2

    .prologue
    .line 1036
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1039
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    .line 1042
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1046
    return-void

    .line 1042
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1044
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private b(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    .local p1, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    move-result-object v0

    .line 1057
    .local v0, "s":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    if-nez v0, :cond_1

    .line 1058
    const/4 v0, 0x0

    .line 1062
    .end local v0    # "s":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 1059
    .restart local v0    # "s":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    :cond_1
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1061
    if-ne v0, p1, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    move-result-object v0

    goto :goto_1

    .line 1064
    :cond_2
    move-object p1, v0

    .line 1065
    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation
.end method

.method b()V
    .locals 2

    .prologue
    .line 1072
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1073
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->b(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    .line 1077
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1081
    return-void

    .line 1077
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1079
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1084
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    if-nez v1, :cond_0

    .line 1089
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->a:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    .line 1091
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->b:Ljava/lang/Object;

    .line 1092
    .local v0, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->b()V

    .line 1093
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1097
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.a;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    .line 1098
    .local v1, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    if-nez v1, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1100
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    .line 1101
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1102
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1104
    :try_start_0
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;->c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1109
    return-void

    .line 1107
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method
