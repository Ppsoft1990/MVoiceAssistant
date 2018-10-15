.class Lcom/iflytek/base/skin/customView/XProgressView$1;
.super Ljava/lang/Object;
.source "XProgressView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/skin/customView/XProgressView;->endAnimation(Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/XProgressView;

.field final synthetic val$listener:Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/XProgressView;Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/skin/customView/XProgressView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->this$0:Lcom/iflytek/base/skin/customView/XProgressView;

    iput-object p2, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->val$listener:Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v1, "onAnimationEnd()| endanimation has end"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->this$0:Lcom/iflytek/base/skin/customView/XProgressView;

    invoke-static {v0}, Lcom/iflytek/base/skin/customView/XProgressView;->access$000(Lcom/iflytek/base/skin/customView/XProgressView;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->this$0:Lcom/iflytek/base/skin/customView/XProgressView;

    sget-object v1, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressView;->access$100(Lcom/iflytek/base/skin/customView/XProgressView;Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;)Z

    .line 185
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->val$listener:Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressView$1;->val$listener:Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;

    invoke-interface {v0, p1}, Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 177
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v1, "onAnimationRepeat()| endanimation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 172
    const-string/jumbo v0, "XProgressView"

    const-string/jumbo v1, "onAnimationStart()| endanimation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
