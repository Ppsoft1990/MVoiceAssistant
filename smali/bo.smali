.class Lbo;
.super Ljava/lang/Object;
.source "ViewGroupCompatHC.java"


# direct methods
.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 28
    return-void
.end method