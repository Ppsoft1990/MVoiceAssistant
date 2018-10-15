.class public final Lauthcommon/c;
.super Ljava/lang/Thread;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauthcommon/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lauthcommon/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Bundle;

.field private e:Lcom/cmcc/migusso/service/IPCCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lauthcommon/c;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lauthcommon/c;->b:Z

    return-void
.end method

.method static synthetic a(Lauthcommon/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "logintype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loginChannel is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string/jumbo p1, "disabled"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "wap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "datasms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p1, "datasms"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "mannal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "mannal"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "datasms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "mannal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "mannal"

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "disabled"

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v0, 0x18e70

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultString"

    invoke-static {p1, p3}, Lauthcommon/bm;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "userlist"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    cmp-long v0, v4, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "randomsso"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lauthcommon/c;->e:Lcom/cmcc/migusso/service/IPCCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lauthcommon/c;->e:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/service/IPCCallback;->callback(Landroid/os/Bundle;)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    const-string/jumbo v1, "resultCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauthcommon/bs;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lauthcommon/c;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lauthcommon/c;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lauthcommon/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lauthcommon/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lauthcommon/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "implicit"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultString"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lauthcommon/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "key handleShake start, loginChannel is ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const-string/jumbo v0, "wap"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lauthcommon/bl;

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, p2, v1}, Lauthcommon/bl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/c$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lauthcommon/bl;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "datasms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lauthcommon/bc;

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, p2, v1}, Lauthcommon/bc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/c$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lauthcommon/bc;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "mannal"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lauthcommon/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getLoginType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "no network."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18ed5

    invoke-direct {p0, v0, v6, v6}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v1

    const-string/jumbo v2, "TOKEN"

    invoke-virtual {v1, v2, v6, p2, v6}, Lauthcommon/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getSqnByUser(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v1, :cond_1

    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    add-long/2addr v2, v10

    iget-object v4, p0, Lauthcommon/c;->c:Landroid/content/Context;

    aget-object v5, p1, v7

    invoke-static {v4, p2, v5, v2, v3}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2, v3}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "token"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lauthcommon/bs;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "passid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0, v4}, Lauthcommon/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getMasterUser(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "logintype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "logintype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mannal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lauthcommon/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x18f42

    invoke-direct {p0, v0, v6, v6}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getMasterUser(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "passid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getSqnByUser(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v4

    const-string/jumbo v5, "TOKEN"

    invoke-virtual {v4, v5, v6, p2, v6}, Lauthcommon/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    add-long/2addr v2, v10

    iget-object v4, p0, Lauthcommon/c;->c:Landroid/content/Context;

    aget-object v5, p1, v7

    invoke-static {v4, p2, v5, v2, v3}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2, v3}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v0, "token"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lauthcommon/bs;->a(Ljava/lang/String;)V

    invoke-direct {p0, p2, v6, v1, v4}, Lauthcommon/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lauthcommon/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x18f3d

    invoke-direct {p0, v0, v6, v6}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "datasms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "logintype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x18e7a

    invoke-direct {p0, v0, v6, v6}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    aget-object v1, p1, v7

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v1, v2, p2, v0}, Lauthcommon/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lauthcommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "appkey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "packagename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {p1, v1}, Lcom/cmcc/util/AESUtil;->decryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v1, "checkAppSign, package is error."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cmcc/util/SignUtil;->getAPPSign(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "checkAppSign, signByte is null."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->toMd5([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/AESUtil;->encryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v1, "checkAppSign, sign is error."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, " app ckeck ok."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lauthcommon/c;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic b(Lauthcommon/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lauthcommon/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    const-string/jumbo v0, "checkSimSame start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const-string/jumbo v2, "IMSI"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cmcc/migusso/ssoutil/SpUtils;->get4Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OLD SIM SUB ID ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NEW SIM SUB ID ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const-string/jumbo v2, "IMSI"

    invoke-static {v1, v2, v0}, Lcom/cmcc/migusso/ssoutil/SpUtils;->save2Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "local simcard is changed, imei ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] to [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->cleanAutoLogionUserInfo(Landroid/content/Context;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const-string/jumbo v2, "IMSI"

    invoke-static {v1, v2, v0}, Lcom/cmcc/migusso/ssoutil/SpUtils;->save2Sp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lauthcommon/c;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultCode"

    const v2, 0x18e70

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "avatar"

    const-string/jumbo v2, "avatar"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "nickname"

    const-string/jumbo v2, "nickname"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "msisdn"

    const-string/jumbo v2, "msisdn"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "email"

    const-string/jumbo v2, "email"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "implicit"

    const-string/jumbo v2, "implicit"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const v0, 0x18f39

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultCode"

    const v2, 0x18e70

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "passid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lauthcommon/c;)Lcom/cmcc/migusso/service/IPCCallback;
    .locals 1

    iget-object v0, p0, Lauthcommon/c;->e:Lcom/cmcc/migusso/service/IPCCallback;

    return-object v0
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "username"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    const v1, 0x18e70

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lauthcommon/c;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultCode"

    const v2, 0x18e70

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "avatar"

    const-string/jumbo v2, "avatar"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "nickname"

    const-string/jumbo v2, "nickname"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "msisdn"

    const-string/jumbo v2, "msisdn"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "email"

    const-string/jumbo v2, "email"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "thirdpartyaccounts"

    const-string/jumbo v2, "thirdpartyaccounts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic d(Lauthcommon/c;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "resultCode"

    const v2, 0x18e70

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "nickname"

    const-string/jumbo v2, "nickname"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lauthcommon/c;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lauthcommon/c;->b:Z

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->initNativeEnv(Ljava/lang/String;)V

    invoke-virtual {p0}, Lauthcommon/c;->start()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lauthcommon/a;

    invoke-direct {v0, p1, p2}, Lauthcommon/a;-><init>(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    :try_start_0
    iget-object v1, p0, Lauthcommon/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x18f9b

    invoke-direct {p0, v0, v2, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 15

    const v11, 0x18e70

    const/4 v12, 0x0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lauthcommon/c;->setPriority(I)V

    const-string/jumbo v0, "BusinessThread start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lauthcommon/c;->b:Z

    if-eqz v0, :cond_3b

    :try_start_0
    iget-object v0, p0, Lauthcommon/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauthcommon/a;

    iget-object v1, v0, Lauthcommon/a;->a:Landroid/os/Bundle;

    iput-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    iget-object v0, v0, Lauthcommon/a;->b:Lcom/cmcc/migusso/service/IPCCallback;

    iput-object v0, p0, Lauthcommon/c;->e:Lcom/cmcc/migusso/service/IPCCallback;

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "commandid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "commandid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "sdkVersion"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "excuteVersionCheck() sdkVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "procAppSignCheck start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "procAppSignCheck, not first login."

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-direct {p0, v2, v1}, Lauthcommon/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "sdkVersion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SSO Local sign check success, sdkVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "++++++++App Sign Check NEW VERSION starting next process"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "commandid"

    iget-object v2, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "nextcommandid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    iget-object v1, p0, Lauthcommon/c;->e:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-virtual {p0, v0, v1}, Lauthcommon/c;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "++++++++App Sign Check OLD VERSION starting callback"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18e70

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "procAppSignCheck, loacl app check sign failed, go network check."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v1, "procAppSignCheck, first login."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/util/CommonUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "procAppSignCheck, network unavailable."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18ed5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lauthcommon/ai;

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lauthcommon/ai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lauthcommon/d;

    invoke-direct {v2, p0, v0}, Lauthcommon/d;-><init>(Lauthcommon/c;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lauthcommon/ai;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "startGetToken start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lauthcommon/c;->b()V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "issipapp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v1}, Lauthcommon/c;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lauthcommon/c;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "procGetTokenBySelected start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getSqnByUser(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    :cond_7
    const-string/jumbo v0, "appinfo is null or sqn is 0 or username is no exist."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-static {v3, v1, v0, v4, v5}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v3, v1, v4, v5}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v4, "passid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2, v0}, Lauthcommon/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const v0, 0x18f3e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "procGetTokenByPassword start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "password"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "issipapp"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "secVerifyFlag"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "rcflag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v13, :cond_a

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lauthcommon/az;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, v13, v4

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v14, "appid"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v9}, Lauthcommon/az;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lauthcommon/c$a;

    const/4 v1, 0x0

    aget-object v5, v13, v1

    const-string/jumbo v8, "mannal"

    move-object v4, p0

    move-object v6, v10

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lauthcommon/az;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "procGetTokenBySmsCode start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "password"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "issipapp"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "secVerifyFlag"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v8, :cond_b

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lauthcommon/bf;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, v8, v4

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v9, "appid"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lauthcommon/bf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lauthcommon/c$a;

    const/4 v1, 0x0

    aget-object v5, v8, v1

    const-string/jumbo v8, "mannal"

    move-object v4, p0

    move-object v6, v7

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lauthcommon/bf;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "busitype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lauthcommon/aq;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v8, "appid"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, Lauthcommon/aq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/v;

    invoke-direct {v1, p0}, Lauthcommon/v;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/aq;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_8
    const v0, 0x18e70

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0}, Lauthcommon/c;->c()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "passid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const v0, 0x18e70

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startCleanSSO, passid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v2, Lauthcommon/aw;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lauthcommon/aw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/o;

    invoke-direct {v0, p0, v1}, Lauthcommon/o;-><init>(Lauthcommon/c;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lauthcommon/aw;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lauthcommon/ba;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lauthcommon/ba;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/w;

    invoke-direct {v1, p0}, Lauthcommon/w;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ba;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getLastLoginUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lauthcommon/bj;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lauthcommon/bj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/x;

    invoke-direct {v1, p0}, Lauthcommon/x;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/bj;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lauthcommon/bb;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lauthcommon/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/g;

    invoke-direct {v1, p0}, Lauthcommon/g;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/bb;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "newpassword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    new-instance v0, Lauthcommon/an;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v7, "appid"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lauthcommon/an;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/h;

    invoke-direct {v1, p0}, Lauthcommon/h;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/an;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x18f9d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "connectUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "connectSmsPort"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/common/HostConfig;->setAuthPath(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    new-instance v2, Lauthcommon/ay;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "appid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lauthcommon/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/y;

    invoke-direct {v0, p0}, Lauthcommon/y;-><init>(Lauthcommon/c;)V

    invoke-virtual {v2, v0}, Lauthcommon/ay;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lauthcommon/am;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lauthcommon/am;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/z;

    invoke-direct {v1, p0}, Lauthcommon/z;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/am;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "oldmsisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "validcode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    new-instance v2, Lauthcommon/bk;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "appid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lauthcommon/bk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/aa;

    invoke-direct {v0, p0}, Lauthcommon/aa;-><init>(Lauthcommon/c;)V

    invoke-virtual {v2, v0}, Lauthcommon/bk;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "newmsisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v0, Lauthcommon/ak;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lauthcommon/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/ab;

    invoke-direct {v1, p0}, Lauthcommon/ab;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ak;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "avatarfilepath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-static {v3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x19001

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Lauthcommon/bi;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lauthcommon/bi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/e;

    invoke-direct {v1, p0}, Lauthcommon/e;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/bi;->a(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_16
    const-string/jumbo v0, "procGetTokenByThird start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "openID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "openIDType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v4, "nickname"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "headImageUrl"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "issipapp"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v10, :cond_1f

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    new-instance v0, Lauthcommon/bg;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v6, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v13, "appid"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lauthcommon/bg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lauthcommon/c$a;

    const/4 v1, 0x0

    aget-object v5, v10, v1

    const-string/jumbo v8, "mannal"

    move-object v4, p0

    move-object v6, v9

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lauthcommon/bg;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lauthcommon/ap;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v3, "appid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lauthcommon/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/f;

    invoke-direct {v1, p0}, Lauthcommon/f;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ap;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "ssologlevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->setLogLevel(I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "abc_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "msisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "upgradetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const v0, 0x18f3b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    new-instance v0, Lauthcommon/ao;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lauthcommon/ao;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/i;

    invoke-direct {v1, p0}, Lauthcommon/i;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ao;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "abc_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "msisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "upgradetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const v0, 0x18f3b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    new-instance v0, Lauthcommon/ad;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v8, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v9, "appid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lauthcommon/ad;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/j;

    invoke-direct {v1, p0}, Lauthcommon/j;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ad;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_1b
    const-string/jumbo v0, "procGetTokenAsHost"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lauthcommon/c;->b()V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/sphelper/SPContentHelper;->init(Landroid/content/Context;)V

    const-string/jumbo v0, "hostappid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sphelper/SPContentHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo v0, "appinfo is null"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getLoginType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "disabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string/jumbo v0, "no network."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18ed5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserForGenToken(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "procGetTokenAsHostApp lastObj "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-eqz v1, :cond_27

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "passid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getSqnByUser(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v3

    const-string/jumbo v6, "TOKEN"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v2, v8}, Lauthcommon/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-static {v3, v2, v0, v4, v5}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2, v4, v5}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v0, "token"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lauthcommon/bs;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "username "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " passid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " token"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lauthcommon/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_27
    const v0, 0x19065

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "pixel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    new-instance v2, Lcom/cmcc/migusso/auth/http/GetQrImageHttp;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/cmcc/migusso/auth/http/GetQrImageHttp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/n;

    invoke-direct {v0, p0}, Lauthcommon/n;-><init>(Lauthcommon/c;)V

    invoke-virtual {v2, v0}, Lcom/cmcc/migusso/auth/http/GetQrImageHttp;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_1d
    const-string/jumbo v0, "procGetTokenByQRC start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "sessionid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_29

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    new-instance v6, Lauthcommon/au;

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "appid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v2, v3, v4, v0}, Lauthcommon/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/c$a;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x0

    const-string/jumbo v5, "qrc"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lauthcommon/c$a;-><init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lauthcommon/au;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lauthcommon/at;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v6, "appid"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lauthcommon/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/p;

    invoke-direct {v1, p0}, Lauthcommon/p;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/at;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    new-instance v0, Lauthcommon/as;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v5, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v7, "appid"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lauthcommon/as;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/q;

    invoke-direct {v1, p0}, Lauthcommon/q;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/as;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "busitype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    new-instance v2, Lauthcommon/ar;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "appid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lauthcommon/ar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/r;

    invoke-direct {v0, p0}, Lauthcommon/r;-><init>(Lauthcommon/c;)V

    invoke-virtual {v2, v0}, Lauthcommon/ar;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_21
    const-string/jumbo v0, "procQueryThirdBind start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    new-instance v0, Lauthcommon/ax;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lauthcommon/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/k;

    invoke-direct {v1, p0}, Lauthcommon/k;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ax;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_22
    const-string/jumbo v0, "procThirdBindPhone start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "newmsisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "bindType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "needLogin"

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v10}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v4}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2e
    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "\u5f53\u524d\u7528\u6237\u672a\u767b\u5f55"

    const v1, 0x18f9e

    const/4 v13, 0x0

    invoke-direct {p0, v1, v13, v0}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_2
    new-instance v0, Lauthcommon/ak;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct/range {v0 .. v10}, Lauthcommon/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/l;

    invoke-direct {v1, p0}, Lauthcommon/l;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/ak;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_23
    const-string/jumbo v0, "procBindPhoneForService start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "newmsisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "businesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v5}, Lauthcommon/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "appinfo is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f9b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    invoke-static {v2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    const v0, 0x192c2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    new-instance v0, Lauthcommon/al;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-direct/range {v0 .. v8}, Lauthcommon/al;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/m;

    invoke-direct {v1, p0}, Lauthcommon/m;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/al;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_24
    const-string/jumbo v0, "procCleanToken, start"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserForGenToken(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_34

    const v0, 0x18e70

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v1, "passid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const v0, 0x18e70

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "procCleanToken, passid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->cleanInfoByUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const v1, 0x18e70

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setLastLoginUser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "procCleanToken, userName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    const v1, 0x18f9b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_25
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->isMiguAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v11

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const v0, 0x18f3b

    goto :goto_4

    :pswitch_26
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "accountTypes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const v0, 0x192d1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    new-instance v0, Lauthcommon/av;

    iget-object v3, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v5, "appid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v2, v1, v4}, Lauthcommon/av;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/s;

    invoke-direct {v1, p0}, Lauthcommon/s;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/av;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_27
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "validIdentify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0x192d1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_39
    new-instance v0, Lauthcommon/aj;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v9, "appid"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v8}, Lauthcommon/aj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/t;

    invoke-direct {v1, p0}, Lauthcommon/t;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/aj;->doRequest$52c1271e(Lauthcommon/ae$a;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lauthcommon/c;->c:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const v0, 0x192d1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    new-instance v0, Lauthcommon/bh;

    iget-object v1, p0, Lauthcommon/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lauthcommon/c;->d:Landroid/os/Bundle;

    const-string/jumbo v9, "appid"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v8}, Lauthcommon/bh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lauthcommon/u;

    invoke-direct {v1, p0}, Lauthcommon/u;-><init>(Lauthcommon/c;)V

    invoke-virtual {v0, v1}, Lauthcommon/bh;->doRequest$52c1271e(Lauthcommon/ae$a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_3b
    return-void

    :cond_3c
    move-object v9, v12

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_f
        :pswitch_1
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1
        :pswitch_19
        :pswitch_c
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1
        :pswitch_1
        :pswitch_1a
        :pswitch_10
        :pswitch_1
        :pswitch_1
        :pswitch_20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_18
    .end packed-switch
.end method
