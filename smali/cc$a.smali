.class public abstract Lcc$a;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 159
    return-void
.end method

.method public a(II)V
    .locals 0
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 214
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 0
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 201
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 170
    return-void
.end method

.method public abstract a(Landroid/view/View;I)Z
.end method

.method public b(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)V
    .locals 0
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 240
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 181
    return-void
.end method

.method public b(I)Z
    .locals 1
    .param p1, "edgeFlags"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 249
    return p1
.end method
