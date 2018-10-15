.class Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;
.super Ljava/lang/Object;
.source "FluentPageTitle.java"

# interfaces
.implements Lcom/iflytek/base/skin/customView/XProgressView$MyEndAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->d(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$2;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressView;->setVisibility(I)V

    .line 265
    return-void
.end method
