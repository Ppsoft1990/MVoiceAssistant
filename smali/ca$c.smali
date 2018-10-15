.class Lca$c;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Lca$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcb;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;IIIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .prologue
    .line 182
    invoke-static/range {p1 .. p6}, Lcb;->a(Ljava/lang/Object;IIIII)V

    .line 183
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-static {p1}, Lcb;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-static {p1}, Lcb;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 161
    invoke-static {p1}, Lcb;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 171
    invoke-static {p1}, Lcb;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 201
    invoke-static {p1}, Lcb;->e(Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-static {p1}, Lcb;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 227
    invoke-static {p1}, Lcb;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
