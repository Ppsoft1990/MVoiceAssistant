.class public Lbe;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe$h;,
        Lbe$g;,
        Lbe$f;,
        Lbe$e;,
        Lbe$d;,
        Lbe$c;,
        Lbe$b;,
        Lbe$a;,
        Lbe$i;
    }
.end annotation


# static fields
.field static final a:Lbe$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 549
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 550
    new-instance v1, Lbe$h;

    invoke-direct {v1}, Lbe$h;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 552
    new-instance v1, Lbe$g;

    invoke-direct {v1}, Lbe$g;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0

    .line 553
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 554
    new-instance v1, Lbe$f;

    invoke-direct {v1}, Lbe$f;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0

    .line 555
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 556
    new-instance v1, Lbe$e;

    invoke-direct {v1}, Lbe$e;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0

    .line 557
    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 558
    new-instance v1, Lbe$d;

    invoke-direct {v1}, Lbe$d;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0

    .line 559
    :cond_4
    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    .line 560
    new-instance v1, Lbe$c;

    invoke-direct {v1}, Lbe$c;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0

    .line 562
    :cond_5
    new-instance v1, Lbe$a;

    invoke-direct {v1}, Lbe$a;-><init>()V

    sput-object v1, Lbe;->a:Lbe$i;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 598
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 789
    sget-object v0, Lbe;->a:Lbe$i;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lbe$i;->a(Landroid/view/View;IIII)V

    .line 790
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 953
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1, p2}, Lbe$i;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1029
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1}, Lbe$i;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1030
    return-void
.end method

.method public static a(Landroid/view/View;Laq;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Laq;

    .prologue
    .line 735
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1}, Lbe$i;->a(Landroid/view/View;Laq;)V

    .line 736
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 803
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1}, Lbe$i;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "direction"    # I

    .prologue
    .line 574
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1}, Lbe$i;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 771
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->b(Landroid/view/View;)V

    .line 772
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .prologue
    .line 854
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0, p1}, Lbe$i;->b(Landroid/view/View;I)V

    .line 855
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 837
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 973
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1043
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1075
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->f(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1088
    sget-object v0, Lbe;->a:Lbe$i;

    invoke-interface {v0, p0}, Lbe$i;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
