.class final Lauthcommon/c$a;
.super Ljava/lang/Object;
.source "BusinessThread.java"

# interfaces
.implements Lauthcommon/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauthcommon/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:Lauthcommon/c;


# direct methods
.method public constructor <init>(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lauthcommon/c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lauthcommon/c$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lauthcommon/c$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lauthcommon/c$a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "wap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    const-string/jumbo v1, "datasms"

    invoke-static {v0, v1}, Lauthcommon/c;->b(Lauthcommon/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "datasms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    const v1, 0x18e7a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    iget-object v2, p0, Lauthcommon/c$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lauthcommon/c$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lauthcommon/c$a;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lauthcommon/c;->a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0, p2, p3}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 14

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "authType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "msisdn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "email"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "resultInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "implicit"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "In BusinessThread, accountRisk = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v2, 0x19258

    if-ne v2, v0, :cond_7

    const-string/jumbo v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauthcommon/c$a;->d:Ljava/lang/String;

    const v1, 0x18f4f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lauthcommon/c$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lauthcommon/c$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauthcommon/c$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauthcommon/c$a;->d:Ljava/lang/String;

    const-string/jumbo v2, "mannal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->b(Lauthcommon/c;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "logintype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mannal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    iget-object v1, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v1}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getUserInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lauthcommon/c;->a(Lauthcommon/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    const v1, 0x18f42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ""

    const-string/jumbo v0, "passid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "sqn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iget-object v0, p0, Lauthcommon/c$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->isAutoChannel(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v4}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3, v0}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v10, v11}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setLastLoginUser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lauthcommon/c$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v4, v10, v11}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "ServicePassport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/cmcc/migusso/auth/http/KeyHandlerNative;->deleteUserInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v0, v1, v8, v9}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/cmcc/migusso/auth/common/LoginInfo;->delUserInfoByPassid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    const v1, 0x18f9b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v8, v3, v7}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v10, v11}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v9, v3, v7}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setUserForGenToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v10, v11}, Lcom/cmcc/migusso/auth/common/LoginInfo;->setSqnByUser(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    const-string/jumbo v7, "102000"

    invoke-virtual {v0, v7}, Lauthcommon/bs;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    const-string/jumbo v7, "TOKEN"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v1, v9}, Lauthcommon/bs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "token"

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0}, Lauthcommon/c;->a(Lauthcommon/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lauthcommon/bs;->a(Landroid/content/Context;)Lauthcommon/bs;

    move-result-object v0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lauthcommon/bs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static/range {v0 .. v6}, Lauthcommon/c;->a(Lauthcommon/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    const v2, 0x18ed5

    if-ne v2, v0, :cond_8

    iget-object v1, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lauthcommon/c;->a(Lauthcommon/c;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const v2, 0x194b2

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    const v2, 0x19453

    if-ne v2, v0, :cond_a

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    const v2, 0x194b7

    if-ne v2, v0, :cond_b

    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    const v2, 0x1945c

    if-eq v2, v0, :cond_c

    const v2, 0x1945b

    if-eq v2, v0, :cond_c

    const v2, 0x195dd

    if-ne v2, v0, :cond_d

    :cond_c
    iget-object v0, p0, Lauthcommon/c$a;->e:Lauthcommon/c;

    invoke-static {v0, p1}, Lauthcommon/c;->a(Lauthcommon/c;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lauthcommon/c$a;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lauthcommon/c$a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
