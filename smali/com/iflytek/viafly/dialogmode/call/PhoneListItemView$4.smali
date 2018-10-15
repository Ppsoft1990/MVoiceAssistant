.class Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;
.super Ljava/lang/Object;
.source "PhoneListItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Z)Z

    .line 259
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->c(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 254
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$4;->a:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Z)Z

    .line 246
    return-void
.end method
