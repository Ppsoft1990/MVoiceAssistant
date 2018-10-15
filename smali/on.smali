.class public final Lon;
.super Ljava/lang/Object;
.source "PermissionFactory.java"


# static fields
.field private static a:Lok;


# direct methods
.method public static a()Lok;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lon;->a:Lok;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lon;->a:Lok;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lou;

    invoke-direct {v0, p0}, Lou;-><init>(Landroid/content/Context;)V

    sput-object v0, Lon;->a:Lok;

    .line 20
    :cond_0
    return-void
.end method
