.class public Ld;
.super Ljava/lang/Object;
.source "ActivityCompatHoneycomb.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 30
    return-void
.end method
