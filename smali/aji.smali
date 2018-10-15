.class public Laji;
.super Landroid/widget/Scroller;
.source "ViewPagerScroller.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 11
    const/16 v0, 0x28a

    iput v0, p0, Laji;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Laji;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "scrollDuration"    # I

    .prologue
    .line 43
    iput p1, p0, Laji;->a:I

    .line 44
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 35
    iget-boolean v0, p0, Laji;->b:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 36
    return-void

    .line 35
    :cond_0
    iget v5, p0, Laji;->a:I

    goto :goto_0
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 30
    iget-boolean v0, p0, Laji;->b:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 31
    return-void

    .line 30
    :cond_0
    iget v5, p0, Laji;->a:I

    goto :goto_0
.end method
