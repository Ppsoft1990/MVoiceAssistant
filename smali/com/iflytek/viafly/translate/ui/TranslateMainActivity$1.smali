.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Laxz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 384
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 386
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    :cond_0
    const-string/jumbo v1, "edit"

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v1

    const-string/jumbo v2, "N_MIC_TRANS"

    invoke-virtual {v1, v2}, Lalq;->a(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v1

    const-string/jumbo v2, "MIC_TRANS"

    invoke-virtual {v1, v2}, Lalq;->a(Ljava/lang/String;)V

    .line 397
    return-void
.end method
