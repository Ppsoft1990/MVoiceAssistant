.class public final Lo/bq;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;I)V
    .locals 0

    iput-object p1, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iput p2, p0, Lo/bq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 5

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "doThirdLogin "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Login onCancel ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-string/jumbo v1, "\u6388\u6743\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x18f9f

    const-string/jumbo v4, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "WEIBO"

    :cond_0
    :goto_0
    iget-object v3, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v4, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget v5, p0, Lo/bq;->a:I

    invoke-virtual {v4, v5}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v4, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->y(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v0, v1, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "WECHAT"

    goto :goto_0

    :cond_2
    sget-object v3, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "QQ"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "figureurl_1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "figureurl_1"

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    goto :goto_1
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 5

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "doThirdLogin "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Login onError ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lo/bq;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x18f9f

    const-string/jumbo v4, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
