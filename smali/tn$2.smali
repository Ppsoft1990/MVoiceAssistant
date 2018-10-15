.class Ltn$2;
.super Ljava/lang/Object;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Ltj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 251
    iput-object p1, p0, Ltn$2;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 254
    const-string/jumbo v1, "UserVoiceRegisterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPasswordList onSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 259
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Ltn$2;->a:Ltn;

    invoke-static {v1}, Ltn;->e(Ltn;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Ltn$2;->a:Ltn;

    invoke-static {v1}, Ltn;->f(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Ltn$2;->a:Ltn;

    invoke-static {v1}, Ltn;->g(Ltn;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 265
    iget-object v1, p0, Ltn$2;->a:Ltn;

    invoke-static {v1}, Ltn;->h(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Ltn$2;->a:Ltn;

    invoke-static {v1}, Ltn;->i(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 271
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPasswordList error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Ltn$2;->a:Ltn;

    invoke-static {v0}, Ltn;->e(Ltn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    iget-object v0, p0, Ltn$2;->a:Ltn;

    invoke-static {v0}, Ltn;->f(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Ltn$2;->a:Ltn;

    invoke-static {v0}, Ltn;->g(Ltn;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XImageView;->clearAnimation()V

    .line 276
    iget-object v0, p0, Ltn$2;->a:Ltn;

    invoke-static {v0}, Ltn;->h(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Ltn$2;->a:Ltn;

    invoke-static {v0}, Ltn;->i(Ltn;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    return-void
.end method
