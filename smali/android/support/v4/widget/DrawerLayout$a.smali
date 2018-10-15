.class Landroid/support/v4/widget/DrawerLayout$a;
.super Laq;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 1527
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$a;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Laq;-><init>()V

    .line 1528
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lbp;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "info"    # Lbp;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 1548
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1549
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1550
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1551
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout$a;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1549
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1558
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-static {v0}, Lbe;->c(Landroid/view/View;)I

    move-result v3

    .line 1559
    .local v3, "importance":I
    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 1571
    :pswitch_2
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lbe;->b(Landroid/view/View;I)V

    .line 1574
    :pswitch_3
    invoke-virtual {p1, v0}, Lbp;->b(Landroid/view/View;)V

    goto :goto_1

    .line 1565
    :pswitch_4
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1566
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout$a;->a(Lbp;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 1578
    .end local v3    # "importance":I
    :cond_2
    return-void

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lbp;Lbp;)V
    .locals 2
    .param p1, "dest"    # Lbp;
    .param p2, "src"    # Lbp;

    .prologue
    .line 1601
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$a;->c:Landroid/graphics/Rect;

    .line 1603
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Lbp;->a(Landroid/graphics/Rect;)V

    .line 1604
    invoke-virtual {p1, v0}, Lbp;->b(Landroid/graphics/Rect;)V

    .line 1606
    invoke-virtual {p2, v0}, Lbp;->c(Landroid/graphics/Rect;)V

    .line 1607
    invoke-virtual {p1, v0}, Lbp;->d(Landroid/graphics/Rect;)V

    .line 1609
    invoke-virtual {p2}, Lbp;->h()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->c(Z)V

    .line 1610
    invoke-virtual {p2}, Lbp;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->a(Ljava/lang/CharSequence;)V

    .line 1611
    invoke-virtual {p2}, Lbp;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->b(Ljava/lang/CharSequence;)V

    .line 1612
    invoke-virtual {p2}, Lbp;->s()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbp;->c(Ljava/lang/CharSequence;)V

    .line 1614
    invoke-virtual {p2}, Lbp;->m()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->h(Z)V

    .line 1615
    invoke-virtual {p2}, Lbp;->k()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->f(Z)V

    .line 1616
    invoke-virtual {p2}, Lbp;->f()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->a(Z)V

    .line 1617
    invoke-virtual {p2}, Lbp;->g()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->b(Z)V

    .line 1618
    invoke-virtual {p2}, Lbp;->i()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->d(Z)V

    .line 1619
    invoke-virtual {p2}, Lbp;->j()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->e(Z)V

    .line 1620
    invoke-virtual {p2}, Lbp;->l()Z

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->g(Z)V

    .line 1622
    invoke-virtual {p2}, Lbp;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lbp;->a(I)V

    .line 1623
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lbp;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lbp;

    .prologue
    .line 1532
    invoke-static {p2}, Lbp;->a(Lbp;)Lbp;

    move-result-object v1

    .line 1533
    .local v1, "superNode":Lbp;
    invoke-super {p0, p1, v1}, Laq;->a(Landroid/view/View;Lbp;)V

    .line 1535
    invoke-virtual {p2, p1}, Lbp;->a(Landroid/view/View;)V

    .line 1536
    invoke-static {p1}, Lbe;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1537
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1538
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p2, v0}, Lbp;->c(Landroid/view/View;)V

    .line 1540
    :cond_0
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Lbp;Lbp;)V

    .line 1542
    invoke-virtual {v1}, Lbp;->t()V

    .line 1544
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "host":Landroid/view/View;
    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$a;->a(Lbp;Landroid/view/ViewGroup;)V

    .line 1545
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1583
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout$a;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    invoke-super {p0, p1, p2, p3}, Laq;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1590
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$a;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1591
    .local v0, "openDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
