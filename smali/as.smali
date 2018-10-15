.class Las;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompatJellyBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Las$a;
    }
.end annotation


# direct methods
.method public static a(Las$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Las$a;

    .prologue
    .line 47
    new-instance v0, Las$1;

    invoke-direct {v0, p0}, Las$1;-><init>(Las$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "delegate"    # Ljava/lang/Object;
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 99
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0    # "delegate":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "delegate"    # Ljava/lang/Object;
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 104
    check-cast p0, Landroid/view/View$AccessibilityDelegate;

    .end local p0    # "delegate":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
