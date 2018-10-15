.class Lau;
.super Ljava/lang/Object;
.source "GravityCompatJellybeanMr1.java"


# direct methods
.method public static a(II)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
