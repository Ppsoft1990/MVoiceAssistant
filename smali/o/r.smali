.class public final Lo/r;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Z

.field private synthetic c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    iput p2, p0, Lo/r;->a:I

    iput-boolean p3, p0, Lo/r;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 3

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

    iget-object v0, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    iget-object v0, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const-string/jumbo v1, "\u6388\u6743\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 5
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

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    iget-object v3, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    iget v4, p0, Lo/r;->a:I

    invoke-virtual {v3, v4}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    iget-boolean v3, p0, Lo/r;->b:Z

    invoke-static {v2, v3, v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    goto :goto_0
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 3

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

    iget-object v0, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c()V

    iget-object v0, p0, Lo/r;->c:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
