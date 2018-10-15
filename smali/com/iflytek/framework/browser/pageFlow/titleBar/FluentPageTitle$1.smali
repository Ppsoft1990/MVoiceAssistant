.class Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;
.super Landroid/os/Handler;
.source "FluentPageTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;
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
    .line 211
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 216
    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 217
    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 223
    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    .line 224
    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 226
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 227
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v1, "image.title_broadcast_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 231
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XProgressView;->clearAnimation()V

    .line 233
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle$1;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->c(Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;)Lcom/iflytek/base/skin/customView/XProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressView;->setVisibility(I)V

    .line 236
    const-string/jumbo v0, "FluentPageTitle"

    const-string/jumbo v1, "clear progress animation in msg "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
