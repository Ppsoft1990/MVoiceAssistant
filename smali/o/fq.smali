.class final Lo/fq;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field private synthetic f:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 0

    iput-object p1, p0, Lo/fq;->f:Lo/fh;

    iput-object p2, p0, Lo/fq;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/fq;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/fq;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/fq;->d:Ljava/lang/String;

    iput-object p6, p0, Lo/fq;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 5

    const v4, 0x18f9f

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

    iget-object v0, p0, Lo/fq;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/fq;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v2, v4, v3}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-static {v4, v0}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fq;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 8
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

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lo/fq;->f:Lo/fh;

    iget-object v1, p0, Lo/fq;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/fq;->b:Ljava/lang/String;

    iget-object v5, p0, Lo/fq;->c:Ljava/lang/String;

    iget-object v6, p0, Lo/fq;->d:Ljava/lang/String;

    iget-object v7, p0, Lo/fq;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static/range {v0 .. v7}, Lo/fh;->a(Lo/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x18f9f

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-static {v0, v1}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fq;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 5

    const v4, 0x18f9f

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

    iget-object v0, p0, Lo/fq;->f:Lo/fh;

    invoke-static {v0}, Lo/fh;->h(Lo/fh;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/fq;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u6388\u6743\u53d6\u6d88"

    invoke-static {v0, v1, v2, v4, v3}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "\u6388\u6743\u5931\u8d25"

    invoke-static {v4, v0}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fq;->e:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    return-void
.end method
