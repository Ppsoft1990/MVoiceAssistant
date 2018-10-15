.class Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;
.super Landroid/view/animation/Animation;
.source "AutoVerticalScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

.field private b:F

.field private c:F

.field private final d:Z

.field private final e:Z

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;
    .param p2, "turnIn"    # Z
    .param p3, "turnUp"    # Z

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->a:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 101
    iput-boolean p2, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->d:Z

    .line 102
    iput-boolean p3, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->e:Z

    .line 103
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    .line 116
    iget v1, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->b:F

    .line 117
    .local v1, "centerX":F
    iget v2, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->c:F

    .line 118
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->f:Landroid/graphics/Camera;

    .line 119
    .local v0, "camera":Landroid/graphics/Camera;
    iget-boolean v5, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->e:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 121
    .local v3, "derection":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 123
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 124
    iget-boolean v5, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->d:Z

    if-eqz v5, :cond_1

    .line 125
    int-to-float v5, v3

    iget v6, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->c:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    invoke-virtual {v0, v7, v5, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 129
    :goto_1
    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 132
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 133
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    return-void

    .line 119
    .end local v3    # "derection":I
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 127
    .restart local v3    # "derection":I
    .restart local v4    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    int-to-float v5, v3

    iget v6, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->c:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    invoke-virtual {v0, v7, v5, v7}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 108
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->f:Landroid/graphics/Camera;

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->a:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->c:F

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->a:Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView$a;->b:F

    .line 111
    return-void
.end method
