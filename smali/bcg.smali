.class public Lbcg;
.super Lbcf;
.source "FileCountLimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lbcj;I)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lbcj;
    .param p3, "maxFileCount"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lbcf;-><init>(Ljava/io/File;Lbcj;I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)I
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
