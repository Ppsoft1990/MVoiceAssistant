.class Lbcf$1;
.super Ljava/lang/Object;
.source "LimitedDiscCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcf;


# direct methods
.method constructor <init>(Lbcf;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lbcf$1;->a:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, "size":I
    iget-object v6, p0, Lbcf$1;->a:Lbcf;

    iget-object v6, v6, Lbcf;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 76
    .local v2, "cachedFiles":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 77
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 78
    .local v1, "cachedFile":Ljava/io/File;
    iget-object v6, p0, Lbcf$1;->a:Lbcf;

    invoke-virtual {v6, v1}, Lbcf;->a(Ljava/io/File;)I

    move-result v6

    add-int/2addr v5, v6

    .line 79
    iget-object v6, p0, Lbcf$1;->a:Lbcf;

    invoke-static {v6}, Lbcf;->a(Lbcf;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lbcf$1;->a:Lbcf;

    invoke-static {v6}, Lbcf;->b(Lbcf;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method
