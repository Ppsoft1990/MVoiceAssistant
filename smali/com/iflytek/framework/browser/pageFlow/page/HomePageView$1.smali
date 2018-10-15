.class Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$1;
.super Ljava/lang/Object;
.source "HomePageView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;)Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->setVisibility(I)V

    .line 337
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 332
    return-void
.end method
