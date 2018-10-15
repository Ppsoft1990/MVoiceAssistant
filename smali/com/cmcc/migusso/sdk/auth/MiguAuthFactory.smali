.class public Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;
.super Ljava/lang/Object;
.source "MiguAuthFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;
    .locals 1

    new-instance v0, Lo/fh;

    invoke-direct {v0, p0}, Lo/fh;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
