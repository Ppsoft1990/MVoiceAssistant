.class Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(IFIFIFIF)Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 99
    const-string/jumbo v0, "AnimationHelper"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->d(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
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
    .line 89
    return-void
.end method
