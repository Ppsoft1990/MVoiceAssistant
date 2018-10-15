.class public final Lim;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lik;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lin;

    invoke-direct {v0, p0, p1}, Lin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
