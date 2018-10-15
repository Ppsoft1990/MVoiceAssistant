.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 845
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 847
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    .line 850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->g(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)I

    .line 861
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    iget-boolean v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-eqz v0, :cond_0

    const v8, 0x7fffffff

    .line 862
    .local v8, "maxY":I
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    iget-boolean v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a:Z

    if-eqz v0, :cond_1

    neg-int v7, v8

    .line 863
    .local v7, "minY":I
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v2

    neg-float v3, p4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 864
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)V

    .line 865
    const/4 v0, 0x1

    return v0

    .line 861
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->h(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Lavv;

    move-result-object v0

    invoke-interface {v0}, Lavv;->a()I

    move-result v0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v2

    mul-int v8, v0, v2

    goto :goto_0

    .restart local v8    # "maxY":I
    :cond_1
    move v7, v1

    .line 862
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 854
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    .line 855
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)V

    .line 856
    const/4 v0, 0x1

    return v0
.end method
