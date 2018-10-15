.class public final Lbdb;
.super Ljava/lang/Object;
.source "DiscCacheUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Lbce;)Ljava/io/File;
    .locals 2
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "discCache"    # Lbce;

    .prologue
    .line 36
    invoke-interface {p1, p0}, Lbce;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "image":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "image":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
