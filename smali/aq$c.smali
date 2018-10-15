.class Laq$c;
.super Laq$a;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Laq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Lbt;
    .locals 2
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-static {p1, p2}, Las;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "provider":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lbt;

    invoke-direct {v1, v0}, Lbt;-><init>(Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Laq;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Laq;

    .prologue
    .line 217
    new-instance v0, Laq$c$1;

    invoke-direct {v0, p0, p1}, Laq$c$1;-><init>(Laq$c;Laq;)V

    invoke-static {v0}, Las;->a(Las$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-static {p1, p2, p3, p4}, Las;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
