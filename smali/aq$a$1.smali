.class Laq$a$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laq$a;->a(Laq;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laq;

.field final synthetic b:Laq$a;


# direct methods
.method constructor <init>(Laq$a;Laq;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Laq$a$1;->b:Laq$a;

    iput-object p2, p0, Laq$a$1;->a:Laq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 159
    iget-object v0, p0, Laq$a$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->a(Landroid/view/View;I)V

    .line 160
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 142
    iget-object v0, p0, Laq$a$1;->a:Laq;

    new-instance v1, Lbp;

    invoke-direct {v1, p2}, Lbp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Laq;->a(Landroid/view/View;Lbp;)V

    .line 144
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 132
    iget-object v0, p0, Laq$a$1;->a:Laq;

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
    .line 154
    iget-object v0, p0, Laq$a$1;->a:Laq;

    invoke-virtual {v0, p1, p2, p3}, Laq;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 137
    iget-object v0, p0, Laq$a$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 138
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 148
    iget-object v0, p0, Laq$a$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 164
    iget-object v0, p0, Laq$a$1;->a:Laq;

    invoke-virtual {v0, p1, p2}, Laq;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    return-void
.end method
