.class public final Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/LoginActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "****"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "\u8be5\u7528\u6237\u540d\u5df2\u5931\u6548\uff0c\u8bf7\u4f7f\u7528\u624b\u673a\u53f7\u7801%s\u8fdb\u884c\u767b\u5f55\u64cd\u4f5c\u3002"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lo/gj;

    invoke-direct {v2, p0, v0, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-static {p0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_3

    if-le v2, v5, :cond_4

    const/4 v0, 0x5

    if-ge v2, v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_2
    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u8be5\u7528\u6237\u540d\u5df2\u5931\u6548\uff0c\u8bf7\u4f7f\u7528\u90ae\u7bb1%s\u8fdb\u884c\u767b\u5f55\u64cd\u4f5c\u3002"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lo/gj;

    invoke-direct {v2, p0, v0, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-static {p0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "****"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v0, Lo/gj;

    const-string/jumbo v1, "\u8be5\u4e1a\u52a1\u5e10\u53f7\u5df2\u5931\u6548\uff0c\u7981\u6b62\u767b\u5f55\u3002"

    invoke-direct {v0, p0, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const v6, 0x18f9f

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "is null or finish..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Landroid/view/View;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->u(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->v(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->w(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->x(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->finish()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x16

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_7

    const/16 v0, 0x18

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "alipay_system_oauth_token_response"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "ALIPAY"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v3, v2, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v7, v0, v1, v6, v2}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v7, v0, v1, v6, v2}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    const-string/jumbo v0, "\u6388\u6743\u53d6\u6d88"

    invoke-virtual {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v7, v0, v1, v6, v2}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x15

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_d

    iget v2, p1, Landroid/os/Message;->arg1:I

    const v0, 0x18e70

    if-ne v0, v2, :cond_8

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->C(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iget-object v1, v7, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->d:Ljava/lang/String;

    iget-object v2, v7, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e:Ljava/lang/String;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    new-instance v6, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;

    const-string/jumbo v8, "mannal"

    invoke-direct {v6, v7, v8}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;-><init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const v0, 0x19462

    if-eq v0, v2, :cond_9

    const v0, 0x19461

    if-ne v0, v2, :cond_c

    :cond_9
    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v7, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_str_third_bind_tip"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "openID"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->A(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "openIDType"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "authntype"

    const-string/jumbo v4, "MIGU"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "needLogin"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "tips"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x19462

    if-ne v0, v2, :cond_b

    const-string/jumbo v0, "bindType"

    const-string/jumbo v2, "REQUIRED"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const/16 v0, 0x37

    invoke-virtual {v7, v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "bindType"

    const-string/jumbo v2, "OPTIONAL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_c
    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    new-instance v0, Lo/gj;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :cond_d
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x18e7a

    if-ne v0, v1, :cond_e

    invoke-static {v7, v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    invoke-virtual {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x19453

    if-ne v0, v1, :cond_f

    new-instance v0, Lo/gs;

    const-string/jumbo v1, "sso_str_up_pwd_err_limit"

    invoke-static {v7, v1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u5b9a"

    invoke-direct {v0, v7, v1, v2}, Lo/gs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gs;)Lo/gs;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gs;

    move-result-object v0

    invoke-virtual {v0}, Lo/gs;->show()V

    goto/16 :goto_0

    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x194b7

    if-ne v0, v1, :cond_11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_10

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "json is null..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "smsCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/gj;

    const-string/jumbo v2, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u53d1\u9001\u77ed\u4fe1JS\u81f3%s\u89e3\u9501"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-static {v7, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x19454

    if-ne v0, v1, :cond_12

    new-instance v0, Lo/gs;

    const-string/jumbo v1, "sso_str_up_pwd_err1"

    invoke-static {v7, v1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u518d\u8bd5\u4e00\u6b21"

    invoke-direct {v0, v7, v1, v2}, Lo/gs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gs;)Lo/gs;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gs;

    move-result-object v0

    invoke-virtual {v0}, Lo/gs;->show()V

    goto/16 :goto_0

    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x19455

    if-ne v0, v1, :cond_13

    new-instance v0, Lo/gs;

    const-string/jumbo v1, "sso_str_up_pwd_err2"

    invoke-static {v7, v1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u518d\u8bd5\u4e00\u6b21"

    invoke-direct {v0, v7, v1, v2}, Lo/gs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gs;)Lo/gs;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gs;

    move-result-object v0

    invoke-virtual {v0}, Lo/gs;->show()V

    goto/16 :goto_0

    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x194b2

    if-ne v0, v1, :cond_14

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x18f40

    if-ne v0, v1, :cond_15

    new-instance v0, Lo/gj;

    const-string/jumbo v1, "\u767b\u5f55\u5931\u8d25\uff1a\u7f51\u7edc\u5f02\u5e38\u6216\u672a\u83b7\u53d6\u77ed\u4fe1\u53d1\u9001\u6743\u9650\u3002\u60a8\u53ef\u5c1d\u8bd5\u5728\u624b\u673a\u8bbe\u7f6e\u4e2d\u66f4\u6539\u6743\u9650\uff0c\u6216\u4f7f\u7528\u5176\u5b83\u65b9\u5f0f\u767b\u5f55\u3002"

    const/4 v2, 0x0

    invoke-direct {v0, v7, v1, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x19324

    if-ne v0, v1, :cond_16

    new-instance v0, Lo/gj;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v7, v1, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1945b

    if-eq v0, v1, :cond_17

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x195dd

    if-ne v0, v1, :cond_18

    :cond_17
    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {v1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "resultCode"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "username"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "resultString"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x35

    invoke-virtual {v7, v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1945c

    if-ne v0, v1, :cond_19

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    invoke-direct {v1, v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "resultCode"

    const v2, 0x1945c

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "username"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "password"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "resultString"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x35

    invoke-virtual {v7, v1, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x195de

    if-ne v0, v1, :cond_1a

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userName"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "password"

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->G(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bindType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x35

    invoke-virtual {v7, v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lo/gs;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u518d\u8bd5\u4e00\u6b21"

    invoke-direct {v0, v7, v1, v2}, Lo/gs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gs;)Lo/gs;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->E(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gs;

    move-result-object v0

    invoke-virtual {v0}, Lo/gs;->show()V

    goto/16 :goto_0

    :cond_1b
    new-instance v0, Lo/gj;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lo/gj;)Lo/gj;

    invoke-static {v7}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->D(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_1c
    move-object v0, v1

    goto/16 :goto_1
.end method
