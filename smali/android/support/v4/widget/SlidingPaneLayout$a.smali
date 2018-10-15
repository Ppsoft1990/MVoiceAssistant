.class Landroid/support/v4/widget/SlidingPaneLayout$a;
.super Laq;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/widget/SlidingPaneLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 1

    .prologue
    .line 1395
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Laq;-><init>()V

    .line 1396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lbp;Lbp;)V
    .locals 2
    .param p1, "dest"    # Lbp;
    .param p2, "src"    # Lbp;

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->c:Landroid/graphics/Rect;

    .line 1456
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Lbp;->a(Landroid/graphics/Rect;)V

    .line 1457
    invoke-virtual {p1, v0}, Lbp;->b(Landroid/graphics/Rect;)V

    .line 1459
    invoke-virtual {p2, v0}, Lbp;->c(Landroid/graphics/Rect;)V

    .line 1460
    invoke-virtual {p1, v0}, Lbp;->d(Landroid/graphics/Rect;)V

    .line 1462
    invoke-virtual {p2}, Lbp;->h()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->c(Z)V

    .line 1463
    invoke-virtual {p2}, Lbp;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->a(Ljava/lang/CharSequence;)V

    .line 1464
    invoke-virtual {p2}, Lbp;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->b(Ljava/lang/CharSequence;)V

    .line 1465
    invoke-virtual {p2}, Lbp;->s()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->c(Ljava/lang/CharSequence;)V

    .line 1467
    invoke-virtual {p2}, Lbp;->m()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->h(Z)V

    .line 1468
    invoke-virtual {p2}, Lbp;->k()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->f(Z)V

    .line 1469
    invoke-virtual {p2}, Lbp;->f()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->a(Z)V

    .line 1470
    invoke-virtual {p2}, Lbp;->g()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->b(Z)V

    .line 1471
    invoke-virtual {p2}, Lbp;->i()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->d(Z)V

    .line 1472
    invoke-virtual {p2}, Lbp;->j()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->e(Z)V

    .line 1473
    invoke-virtual {p2}, Lbp;->l()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->g(Z)V

    .line 1475
    invoke-virtual {p2}, Lbp;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->a(I)V

    .line 1477
    invoke-virtual {p2}, Lbp;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->b(I)V

    .line 1478
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lbp;)V
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lbp;

    .prologue
    .line 1400
    invoke-static {p2}, Lbp;->a(Lbp;)Lbp;

    move-result-object v4

    .line 1401
    .local v4, "superNode":Lbp;
    invoke-super {p0, p1, v4}, Laq;->a(Landroid/view/View;Lbp;)V

    .line 1402
    invoke-direct {p0, p2, v4}, Landroid/support/v4/widget/SlidingPaneLayout$a;->a(Lbp;Lbp;)V

    .line 1403
    invoke-virtual {v4}, Lbp;->t()V

    .line 1405
    const-class v5, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lbp;->b(Ljava/lang/CharSequence;)V

    .line 1406
    invoke-virtual {p2, p1}, Lbp;->a(Landroid/view/View;)V

    .line 1408
    invoke-static {p1}, Lbe;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v3

    .line 1409
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1410
    check-cast v3, Landroid/view/View;

    .end local v3    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p2, v3}, Lbp;->c(Landroid/view/View;)V

    .line 1415
    :cond_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .line 1416
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1417
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1418
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1420
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lbe;->b(Landroid/view/View;I)V

    .line 1422
    invoke-virtual {p2, v0}, Lbp;->b(Landroid/view/View;)V

    .line 1416
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1425
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1437
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/SlidingPaneLayout$a;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    invoke-super {p0, p1, p2, p3}, Laq;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$a;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1429
    invoke-super {p0, p1, p2}, Laq;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1431
    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1432
    return-void
.end method
