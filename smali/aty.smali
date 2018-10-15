.class public Laty;
.super Ljava/lang/Object;
.source "NoticeBusinessHandlerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;I)Latw;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userMode"    # I

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Latz;

    invoke-direct {v0, p0}, Latz;-><init>(Landroid/content/Context;)V

    .line 23
    :goto_0
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 21
    new-instance v0, Laua;

    invoke-direct {v0, p0}, Laua;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Latx;

    invoke-direct {v0, p0}, Latx;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
