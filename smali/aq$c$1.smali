.class Laq$c$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Las$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laq$c;->a(Laq;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laq;

.field final synthetic b:Laq$c;


# direct methods
.method constructor <init>(Laq$c;Laq;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Laq$c$1;->b:Laq$c;

    iput-object p2, p0, Laq$c$1;->a:Laq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v1, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v1, p1}, Laq;->a(Landroid/view/View;)Lbt;

    move-result-object v0

    .line 262
    .local v0, "provider":Lbt;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbt;->a()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 250
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->a(Landroid/view/View;I)V

    .line 251
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 233
    iget-object v0, p0, Laq$c$1;->a:Laq;

    new-instance v1, Lbp;

    invoke-direct {v1, p2}, Lbp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Laq;->a(Landroid/view/View;Lbp;)V

    .line 235
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 267
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2, p3}, Laq;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 223
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 245
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2, p3}, Laq;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 228
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 239
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 255
    iget-object v0, p0, Laq$c$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method
