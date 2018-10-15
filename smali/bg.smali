.class Lbg;
.super Ljava/lang/Object;
.source "ViewCompatGingerbread.java"


# direct methods
.method public static a(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
