.class Laoi$4;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ThirdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .param p1, "this$0"    # Laoi;

    .prologue
    .line 254
    iput-object p1, p0, Laoi$4;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 257
    iget-object v2, p0, Laoi$4;->a:Laoi;

    invoke-static {v2, p2}, Laoi;->a(Laoi;Landroid/content/Context;)Landroid/content/Context;

    .line 258
    if-ne v3, p1, :cond_0

    .line 259
    iget-object v2, p0, Laoi$4;->a:Laoi;

    invoke-static {v2, v3}, Laoi;->a(Laoi;I)I

    .line 260
    iget-object v2, p0, Laoi$4;->a:Laoi;

    invoke-static {v2, v5}, Laoi;->b(Laoi;Z)Z

    .line 261
    const-string/jumbo v2, "MiguUiLoginHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallBack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Laoi$4;->a:Laoi;

    invoke-static {v2}, Laoi;->b(Laoi;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wxe849baa57d03c145"

    invoke-static {v2, v3, v5}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 263
    .local v0, "WXapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string/jumbo v2, "wxe849baa57d03c145"

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 265
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 267
    .local v1, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string/jumbo v2, "snsapi_userinfo"

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 272
    const-string/jumbo v2, "app_wechat"

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 273
    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 275
    .end local v0    # "WXapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .end local v1    # "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    :cond_0
    return-void
.end method

.method public onThirdLoginComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method
