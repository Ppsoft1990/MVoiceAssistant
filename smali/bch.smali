.class public Lbch;
.super Lbcf;
.source "TotalSizeLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxCacheSize"    # I

    .prologue
    .line 45
    invoke-static {}, Lbcs;->a()Lbcj;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbch;-><init>(Ljava/io/File;Lbcj;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lbcj;I)V
    .locals 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lbcj;
    .param p3, "maxCacheSize"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lbcf;-><init>(Ljava/io/File;Lbcj;I)V

    .line 57
    const/high16 v0, 0x200000

    if-ge p3, v0, :cond_0

    .line 58
    const-string/jumbo v0, "You set too small disc cache size (less than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)I
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
