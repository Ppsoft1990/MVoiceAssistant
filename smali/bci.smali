.class public Lbci;
.super Lbcd;
.source "UnlimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lbcj;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lbcj;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lbcd;-><init>(Ljava/io/File;Lbcj;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 50
    return-void
.end method
