.class final Lo/fr;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/fr;->f:Lo/fh;

    iput-object p2, p0, Lo/fr;->a:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    iput-object p3, p0, Lo/fr;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/fr;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/fr;->d:Ljava/lang/String;

    iput-object p6, p0, Lo/fr;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 8

    const v6, 0x19462

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/fr;->a:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const v0, 0x18e70

    if-ne v1, v0, :cond_1

    const-string/jumbo v0, "openID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/fr;->f:Lo/fh;

    iget-object v1, p0, Lo/fr;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/fr;->c:Ljava/lang/String;

    iget-object v4, p0, Lo/fr;->d:Ljava/lang/String;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lo/fr;->a:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    iget-object v7, p0, Lo/fr;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lo/fh;->getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eq v6, v1, :cond_2

    const v0, 0x19461

    if-ne v0, v1, :cond_5

    :cond_2
    const-string/jumbo v0, "openID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "bindmsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lo/fr;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lo/fr;->f:Lo/fh;

    invoke-static {v3}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sso_str_third_bind_tip"

    invoke-static {v3, v4}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lo/fr;->f:Lo/fh;

    invoke-static {v4}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "openID"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "openIDType"

    iget-object v4, p0, Lo/fr;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "authntype"

    const-string/jumbo v4, "MIGU"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "needLogin"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "tips"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "intentfrom"

    const-string/jumbo v2, "APP"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne v6, v1, :cond_4

    const-string/jumbo v0, "bindType"

    const-string/jumbo v1, "REQUIRED"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lo/fr;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "bindType"

    const-string/jumbo v1, "OPTIONAL"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lo/fr;->a:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
