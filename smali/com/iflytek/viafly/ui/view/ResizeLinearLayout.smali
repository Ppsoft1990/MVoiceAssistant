.class public Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ResizeLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final SOFTKEYPAD_MIN_HEIGHT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ResizeLinearLayout"


# instance fields
.field private mResizeHandler:Landroid/os/Handler;

.field private onSizeChangedListener:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->mResizeHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->mResizeHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onLayout(ZIIII)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onMeasure(II)V

    .line 55
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onSizeChanged(IIII)V

    .line 29
    const-string/jumbo v0, "ResizeLinearLayout"

    const-string/jumbo v1, "onSizeChanged"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string/jumbo v0, "ResizeLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->onSizeChangedListener:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->onSizeChangedListener:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;->onSizeChanged(IIII)V

    .line 45
    :cond_0
    return-void
.end method

.method public setSizeChangedListener(Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;)V
    .locals 0
    .param p1, "onSizeChangedListener"    # Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->onSizeChangedListener:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout$OnSizeChangedListener;

    .line 60
    return-void
.end method
