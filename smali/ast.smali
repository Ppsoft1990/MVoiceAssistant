.class public Last;
.super Ljava/lang/Object;
.source "PluginItemFactory.java"


# direct methods
.method public static a(Landroid/app/Activity;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lasq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lasq;>;"
    return-object v0
.end method
