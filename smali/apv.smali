.class public Lapv;
.super Ljava/lang/Object;
.source "MusicOperationFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lapy;)Lapz;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "config"    # Lapy;

    .prologue
    .line 13
    invoke-interface {p1}, Lapy;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    new-instance v0, Lapx;

    invoke-direct {v0, p0, p1}, Lapx;-><init>(Landroid/content/Context;Lapy;)V

    .line 19
    .local v0, "mMusicOperation":Lapz;
    :goto_0
    return-object v0

    .line 16
    .end local v0    # "mMusicOperation":Lapz;
    :cond_0
    new-instance v0, Lapu;

    invoke-direct {v0, p0, p1}, Lapu;-><init>(Landroid/content/Context;Lapy;)V

    .restart local v0    # "mMusicOperation":Lapz;
    goto :goto_0
.end method
