.class public Lcom/iflytek/cmcc/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private d:Lts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string/jumbo v0, "share"

    iput-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->a:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "login"

    iput-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->requestWindowFeature(I)Z

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 49
    .local v1, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 53
    .end local v1    # "statusBarColor":I
    :cond_0
    const-string/jumbo v2, "wx78d23038a30fa08b"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXEntryActivity"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 70
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 78
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 10
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "result":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 85
    .local v6, "type":Ljava/lang/String;
    instance-of v7, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;

    if-eqz v7, :cond_3

    .line 86
    const-string/jumbo v6, "share"

    .line 91
    :cond_0
    :goto_0
    const v1, 0x927c1

    .line 93
    .local v1, "code":I
    const-string/jumbo v7, "WXEntryActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "baseresp.getType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v7, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v7, :pswitch_data_0

    .line 125
    :pswitch_0
    const v1, 0x927ca

    .line 129
    :cond_1
    :goto_1
    const-string/jumbo v7, "WXEntryActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResp result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v7, "share"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    new-instance v3, Lcom/iflytek/framework/ui/share/ShareEvent;

    const-string/jumbo v7, "com.tencent.mm"

    iget-object v8, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-direct {v3, v1, v7, v8}, Lcom/iflytek/framework/ui/share/ShareEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v3, "event":Lcom/iflytek/framework/ui/share/ShareEvent;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    invoke-virtual {v7, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 137
    .end local v3    # "event":Lcom/iflytek/framework/ui/share/ShareEvent;
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->finish()V

    .line 138
    return-void

    .line 87
    .end local v1    # "code":I
    :cond_3
    instance-of v7, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    if-eqz v7, :cond_0

    .line 88
    const-string/jumbo v6, "login"

    goto :goto_0

    .line 97
    .restart local v1    # "code":I
    :pswitch_1
    const-string/jumbo v5, "\u53d1\u9001\u6210\u529f"

    .line 98
    const/4 v1, 0x0

    .line 99
    const-string/jumbo v7, "login"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    move-object v7, v0

    iget-object v4, v7, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 102
    .local v4, "loginCode":Ljava/lang/String;
    iget-object v7, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->d:Lts;

    if-nez v7, :cond_4

    .line 103
    new-instance v7, Lts;

    invoke-direct {v7}, Lts;-><init>()V

    iput-object v7, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->d:Lts;

    .line 105
    :cond_4
    iget-object v7, p0, Lcom/iflytek/cmcc/wxapi/WXEntryActivity;->d:Lts;

    invoke-virtual {v7, v4}, Lts;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v7

    new-instance v8, Laol;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Laol;-><init>(Z)V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    .end local v4    # "loginCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "WXEntryActivity"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string/jumbo v5, "\u53d1\u9001\u53d6\u6d88"

    .line 114
    const v1, 0x927c5

    .line 115
    goto/16 :goto_1

    .line 117
    :pswitch_3
    const-string/jumbo v5, "\u53d1\u9001\u88ab\u62d2\u7edd"

    .line 118
    const v1, 0x927c6

    .line 119
    goto/16 :goto_1

    .line 121
    :pswitch_4
    const-string/jumbo v5, "\u4e0d\u652f\u6301\u9519\u8bef"

    .line 122
    const v1, 0x927c9

    .line 123
    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
