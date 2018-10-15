.class Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;
.super Ljava/lang/Object;
.source "ScanImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/ScanImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanAnimationListener"
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mType:I

.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/view/ScanImageView;ILandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/ScanImageView;
    .param p2, "type"    # I
    .param p3, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mType:I

    .line 68
    iput p2, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mType:I

    .line 69
    iput-object p3, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mAnimation:Landroid/view/animation/Animation;

    .line 70
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->access$000(Lcom/iflytek/viafly/ui/view/ScanImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mType:I

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ScanImageView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/ScanImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ScanImageView$ScanAnimationListener;->this$0:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->startScan()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method
