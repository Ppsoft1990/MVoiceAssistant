.class public final Lo/br;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/br;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    iput-object p2, p0, Lo/br;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    new-instance v0, Lcom/alipay/sdk/app/AuthTask;

    iget-object v1, p0, Lo/br;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/AuthTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lo/br;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/AuthTask;->authV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ali login authResult ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x16

    iput v0, v2, Landroid/os/Message;->what:I

    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "9000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    const-string/jumbo v5, "auth_code"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v0, v3, v1

    aget-object v4, v3, v1

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo/fs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    iput v1, v2, Landroid/os/Message;->arg1:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lo/br;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/br;->b:Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x17

    iput v1, v2, Landroid/os/Message;->arg1:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
