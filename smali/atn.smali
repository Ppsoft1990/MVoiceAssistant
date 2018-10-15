.class public Latn;
.super Ljava/lang/Object;
.source "PushRequestControllerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;)Latm;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-boolean v0, Lnj;->b:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0}, Latk;->a(Landroid/content/Context;)Latk;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Latl;

    invoke-direct {v0, p0}, Latl;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
