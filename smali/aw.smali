.class Law;
.super Ljava/lang/Object;
.source "KeyEventCompatEclair.java"


# direct methods
.method public static a(Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    .line 35
    return-void
.end method
