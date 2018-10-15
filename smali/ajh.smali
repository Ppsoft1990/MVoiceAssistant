.class public Lajh;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 21
    iput-object p1, p0, Lajh;->c:Landroid/view/View;

    .line 22
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 38
    iput p1, p0, Lajh;->a:I

    .line 39
    iget v0, p0, Lajh;->a:I

    sub-int v0, p2, v0

    iput v0, p0, Lajh;->b:I

    .line 40
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 26
    iget-object v0, p0, Lajh;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lajh;->a:I

    int-to-float v1, v1

    iget v2, p0, Lajh;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object v0, p0, Lajh;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 28
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 49
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
