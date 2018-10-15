.class public Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->setContentView(I)V

    .line 34
    const-string/jumbo v0, "wx78d23038a30fa08b"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 35
    iget-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 36
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 42
    iget-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 43
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 48
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 57
    const-string/jumbo v1, "Business_PayComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPayFinish, errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 60
    const-string/jumbo v0, "\u652f\u4ed8\u5931\u8d25"

    .line 61
    .local v0, "toastString":Ljava/lang/String;
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXPayEntryActivity;->finish()V

    .line 81
    .end local v0    # "toastString":Ljava/lang/String;
    :cond_1
    return-void

    .line 63
    .restart local v0    # "toastString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "\u652f\u4ed8\u6210\u529f"

    .line 64
    goto :goto_0

    .line 66
    :pswitch_1
    const-string/jumbo v0, "\u652f\u4ed8\u5931\u8d25"

    .line 67
    goto :goto_0

    .line 69
    :pswitch_2
    const-string/jumbo v0, ""

    .line 70
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
