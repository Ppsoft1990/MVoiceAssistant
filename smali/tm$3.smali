.class Ltm$3;
.super Landroid/os/Handler;
.source "UserVoiceLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .param p1, "this$0"    # Ltm;

    .prologue
    .line 239
    iput-object p1, p0, Ltm$3;->a:Ltm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-virtual {v1}, Ltm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    const-string/jumbo v1, "UserVoiceLoginFragment"

    const-string/jumbo v2, "MSG_LOGIN_SUCCESS"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :try_start_0
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-virtual {v1}, Ltm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserVoiceLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u767b\u5f55\u6210\u529f finish error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-static {v1}, Ltm;->c(Ltm;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-static {v1}, Ltm;->c(Ltm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string/jumbo v1, "UserVoiceLoginFragment"

    const-string/jumbo v2, "MSG_LOGIN_ERROR"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Ltm$3;->a:Ltm;

    const-string/jumbo v2, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v1, v2}, Ltm;->b(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-virtual {v1}, Ltm;->c()V

    goto :goto_0

    .line 263
    :pswitch_2
    const-string/jumbo v1, "UserVoiceLoginFragment"

    const-string/jumbo v2, "MSG_RETRY_CLOSE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_1
    iget-object v1, p0, Ltm$3;->a:Ltm;

    invoke-virtual {v1}, Ltm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "UserVoiceLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_RETRY_CLOSE error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
