.class public final Lo/fh;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;


# static fields
.field private static a:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field private d:Lcom/cmcc/migusso/service/ISsoService;

.field private e:Landroid/content/ServiceConnection;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/text/SimpleDateFormat;

.field private k:Lcom/cmcc/migusso/service/IPCCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    iput-object v1, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    iput-boolean v0, p0, Lo/fh;->g:Z

    iput-boolean v0, p0, Lo/fh;->h:Z

    iput-boolean v0, p0, Lo/fh;->i:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/fh;->j:Ljava/text/SimpleDateFormat;

    new-instance v0, Lo/fk;

    invoke-direct {v0, p0}, Lo/fk;-><init>(Lo/fh;)V

    iput-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/fi;

    invoke-direct {v1, p0}, Lo/fi;-><init>(Lo/fh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lo/fh;Lcom/cmcc/migusso/service/ISsoService;)Lcom/cmcc/migusso/service/ISsoService;
    .locals 0

    iput-object p1, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lo/fh;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/fh;->i:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lo/fh;->i:Z

    :try_start_0
    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v3, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    iput-boolean v2, p0, Lo/fh;->g:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, p1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    .locals 6

    const v5, 0x18e71

    const-string/jumbo v0, "sdkVersion"

    const-string/jumbo v1, "UnionSDK-20AndriodV3.3.3"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    invoke-interface {v0, p1, p2}, Lcom/cmcc/migusso/service/ISsoService;->callback(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v5}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ServiceConnection, cmcc-sso-com.cmcc.migusso.sdk.jar version[UnionSDK-20AndriodV3.3.3]."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v0, Lo/fj;

    invoke-direct {v0, p0, p1}, Lo/fj;-><init>(Lo/fh;Landroid/os/Bundle;)V

    iput-object v0, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.cmcc.migusso.service.SsoService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "app self com.cmcc.migusso.service info --> "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/com.cmcc.migusso.service.SsoService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "begin to bind self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bind to self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "try again, begin to bind self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bind self app com.cmcc.migusso.service packagename "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed. again"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18e71

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bind to self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " throw SecurityException."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sput-object p2, Lo/fh;->f:Ljava/lang/String;

    const-string/jumbo v0, "commandid"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "nextcommandid"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "appkey"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "packagename"

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "procCheckApp, the app packagename is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const-string/jumbo v0, "appid"

    sget-object v1, Lo/fh;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p2, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p3, v0, Lo/fv;->b:Ljava/lang/String;

    const-string/jumbo v0, "openIDType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p5, v0}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 7

    const-string/jumbo v1, "startGetTokenByCondition start."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/fv;->d:Z

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v1, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    :cond_0
    if-nez p10, :cond_1

    const-string/jumbo v1, "startGetTokenByCondition, listener is null."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p10

    iput-object v0, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "startGetTokenByCondition, input param is null."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v1, 0x18f3b

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resultCode"

    const v3, 0x192c2

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "resultString"

    const-string/jumbo v3, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v2}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "JSONException error"

    invoke-static {v3, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lo/fh;->g:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "startGetTokenByCondition running."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v1, 0x18f3c

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/fh;->g:Z

    const-string/jumbo v1, "1"

    const/4 v2, 0x4

    if-ne p3, v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    packed-switch p3, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startGetTokenByCondition, authnType is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v1, 0x18f3b

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v5, 0x4

    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "showuname"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "issipapp"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "secVerifyFlag"

    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "sessionid"

    invoke-virtual {v2, v3, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "validcode"

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    if-ne v5, v3, :cond_7

    const-string/jumbo v3, "rcflag"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v2, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v5, 0x5

    goto :goto_2

    :pswitch_2
    const/4 v5, 0x6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lo/fh;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    return-void
.end method

.method static synthetic a(Lo/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 9

    new-instance v0, Lo/fr;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lo/fr;-><init>(Lo/fh;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lo/fh;->queryThirdBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    return-void
.end method

.method static synthetic a(Lo/fh;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lo/fh;->a()V

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionEnd(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "callback, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lo/fh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/fh;->i:Z

    return p1
.end method

.method static synthetic b(Lo/fh;)Lcom/cmcc/migusso/service/IPCCallback;
    .locals 1

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    return-object v0
.end method

.method static synthetic c(Lo/fh;)Lcom/cmcc/migusso/service/ISsoService;
    .locals 1

    iget-object v0, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    return-object v0
.end method

.method static synthetic d(Lo/fh;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->h:Z

    return v0
.end method

.method static synthetic e(Lo/fh;)Lcom/cmcc/migusso/sdk/auth/TokenListener;
    .locals 1

    iget-object v0, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    return-object v0
.end method

.method static synthetic f(Lo/fh;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lo/fh;->j:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic g(Lo/fh;)V
    .locals 0

    invoke-direct {p0}, Lo/fh;->a()V

    return-void
.end method

.method static synthetic h(Lo/fh;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final actionUemThirdLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 10

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    const-string/jumbo v0, "WEIBO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WEIBO:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v2, "UnionSDK-20AndriodV3.3.3"

    invoke-static {v0, p2, v1, v2}, Lcom/migu/uem/statistics/other/AuthAgent;->authInfoChange(Landroid/content/Context;Ljava/lang/String;Lcom/migu/uem/statistics/other/ULoginType;Ljava/lang/String;)V

    sget-object v2, Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;->THIRDLOGIN:Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;

    move-object v0, p1

    move-object v1, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionLogin(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/ssoutil/UemUtils$LoginType;Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;JJLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "WECHAT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->WECHAT:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "QQ"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;->QQ:Lcom/cmcc/migusso/ssoutil/UemUtils$AccountType;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "bindAccount start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p8, :cond_0

    const-string/jumbo v0, "bindAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p8, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "bindAccount, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bindAccount running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accountType"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "consumerkey"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validIdentify"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uid"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x38

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final bindNewPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "bindNewPhone start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "bindNewPhone, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "bindNewPhone, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bindNewPhone running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "newmsisdn"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x14

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final bindPhoneForService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const v1, 0x18f3c

    if-nez p9, :cond_0

    const-string/jumbo v0, "thirdPartyBindPhone, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p9, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "queryThirdBindMessage, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "queryThirdBindMessage running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "newmsisdn"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "businesstoken"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "consumerkey"

    invoke-virtual {v1, v0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto/16 :goto_0
.end method

.method public final changeAccount(Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 3

    const-string/jumbo v0, "changAccount start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo v0, "changAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "changAccount running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lo/fh;->h:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "changAccount, checkappsign failed."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3a

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "changAccount, appid or username is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "appid"

    sget-object v2, Lo/fh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final changeNickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "changeNickName start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "changeNickName, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "changeNickName, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "changeNickName running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nickname"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x12

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "changePassword start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "changePassword, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "changePassword, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "changePassword running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "newpassword"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final checkAbcAccountAndPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "begin checkAbcAccountAndPhone."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "checkAbcAccountAndPhone, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "checkAbcAccountAndPhone, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "checkAbcAccountAndPhone running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "abc_account"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "msisdn"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "upgradetype"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final cleanSSO(Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 3

    const-string/jumbo v0, "cleanSSO start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "changAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "appid"

    sget-object v2, Lo/fh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "passid"

    sget-object v2, Lo/fh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    return-void
.end method

.method public final doAbcAccountUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "doAbcAccountUpgrade start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p9, :cond_0

    const-string/jumbo v0, "doAbcAccountUpgrade, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p9, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "doAbcAccountUpgrade, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "doAbcAccountUpgrade running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "abc_account"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "msisdn"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "upgradetype"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nickname"

    invoke-virtual {v1, v0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x20

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final enableStoreLog(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/cmcc/util/LogUtil;->enableStoreLog(Landroid/content/Context;Z)V

    return-void
.end method

.method public final finishAllMiguActivitys()V
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->d()V

    return-void
.end method

.method public final finishTopMiguActivity()V
    .locals 1

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->c()V

    return-void
.end method

.method public final getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "getAccessToken start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "startGetToken start."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iput-boolean v2, v1, Lo/fv;->d:Z

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v1, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    :cond_0
    if-nez p5, :cond_1

    const-string/jumbo v0, "startGetToken, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v0, "startGetToken, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lo/fh;->g:Z

    if-eqz v1, :cond_4

    const-string/jumbo v0, "startGetToken running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/fh;->g:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "default"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    :cond_5
    const-string/jumbo p4, "gba,wap,datasms,mannal"

    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logintype"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "issipapp"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "showuname"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 11

    const-string/jumbo v0, "getAccessTokenByCondition start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "getAccessTokenByCondition, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p2, v0, Lo/fv;->b:Ljava/lang/String;

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-nez p6, :cond_2

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lo/fh;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "getAccessTokenByThirdLogin start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean v1, v0, Lo/fv;->d:Z

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    :cond_0
    if-nez p6, :cond_1

    const-string/jumbo v0, "getAccessTokenByThirdLogin, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "getAccessTokenByThirdLogin, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "getAccessTokenByThirdLogin running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "openID"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accesstoken"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "consumerkey"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "issipapp"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x16

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "getAccessTokenByThirdLogin start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean v1, v0, Lo/fv;->d:Z

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->loginCancel(Z)V

    :cond_0
    if-nez p7, :cond_1

    const-string/jumbo v0, "getAccessTokenByThirdLogin, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p7, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "getAccessTokenByThirdLogin, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "getAccessTokenByThirdLogin running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "openID"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nickname"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "headImageUrl"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "issipapp"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x16

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final getAccountList(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getAccountList start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo v0, "getAccountList, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getAccountList, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "getAccountList running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UnionSDK-20AndriodV3.3.3"

    return-object v0
.end method

.method public final getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getSmsCode start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "getSmsCode, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getSmsCode, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "busitype"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lo/fh;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getSmsCode start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "getSmsCode, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getSmsCode, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "busitype"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "email"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lo/fh;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final getSmsCodeForBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getSmsCodeForBind start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p7, :cond_0

    const-string/jumbo v0, "getSmsCodeForBind, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :cond_0
    iput-object p7, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getSmsCodeForBind, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "busitype"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openID"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lo/fh;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final getStoreFileDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/cmcc/util/LogUtil;->getStoreFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVisitorId(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getVisitorId start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo v0, "getVisitorId, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getVisitorId, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "getVisitorId running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x17

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final getVoiceValidCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "getVoiceValidCode start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "getVoiceValidCode, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "getVoiceValidCode, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "busitype"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x24

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final isMiguAccount(Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 3

    const-string/jumbo v0, "isMiguAccount start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo v0, "isMiguAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final notifyLoginResult(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0}, Lo/cc;->b()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;

    invoke-virtual {v0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public final qrcodeScanLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "qrcodeScanLogin start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p7, :cond_0

    const-string/jumbo v0, "qrcodeScanLogin, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p7, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "qrcodeScanLogin, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "qrcodeScanLogin running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionid"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x34

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final qrcodeScaned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "qrcodeScaned start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "qrcodeScaned, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "qrcodeScaned, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "qrcodeScaned running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionid"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x33

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final queryAllUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "queryAllUserInfo start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "queryAllUserInfo, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "queryAllUserInfo, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "queryAllUserInfo running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accountTypes"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x37

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final queryThirdBindMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const v1, 0x18f3c

    if-nez p7, :cond_0

    const-string/jumbo v0, "thirdPartyBindPhone, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p7, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "queryThirdBindMessage, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "queryThirdBindMessage running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accesstoken"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "consumerkey"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1b

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final queryUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "queryUserInfo start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string/jumbo v0, "queryUserInfo, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "queryUserInfo, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "queryUserInfo running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "registerUser start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string/jumbo v0, "registerUser, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "registerUser, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "registerUser running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final requestServiceToSaveRespDate()V
    .locals 6

    const-string/jumbo v0, "requestServiceToSaveRespDate"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/fh;->d:Lcom/cmcc/migusso/service/ISsoService;

    iget-object v1, p0, Lo/fh;->j:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/service/ISsoService;->updateAppRespDate(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/fh;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ServiceConnection, cmcc-sso-com.cmcc.migusso.sdk.jar version[UnionSDK-20AndriodV3.3.3]."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v0, Lo/fo;

    invoke-direct {v0, p0}, Lo/fo;-><init>(Lo/fh;)V

    iput-object v0, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.cmcc.migusso.service.SsoService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "app self com.cmcc.migusso.service info --> "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/com.cmcc.migusso.service.SsoService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "begin to bind self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bind to self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "try again, begin to bind self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/fh;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bind self app com.cmcc.migusso.service packagename "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed. again"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    const v0, 0x18e71

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bind to self com.cmcc.migusso.service packagename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " throw SecurityException."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const v1, 0x18f3b

    const-string/jumbo v0, "resetPassword start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "resetPassword, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p2, v0, Lo/fv;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-nez p6, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-nez p6, :cond_3

    const-string/jumbo v0, "resetPassword, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p6, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "resetPassword, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "resetPassword running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto/16 :goto_0
.end method

.method public final securityVerifyByImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 11

    const/4 v3, 0x2

    const-string/jumbo v6, "1"

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lo/fh;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public final securityVerifyByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 11

    const/4 v3, 0x3

    const-string/jumbo v6, "1"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lo/fh;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public final setAppInfoQQ(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->s:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppInfoWechat(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->r:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppInfoWeibo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->q:Ljava/util/HashMap;

    return-void
.end method

.method public final setAppid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p2, v0, Lo/fv;->b:Ljava/lang/String;

    return-void
.end method

.method public final setBackArrow(Z)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean p1, v0, Lo/fv;->c:Z

    return-void
.end method

.method public final setConnectUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "connectUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "connectSmsPort"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    return-void
.end method

.method public final setFindPwdCallBack(Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->k:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-void
.end method

.method public final setFinishCallBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->p:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Lcom/cmcc/util/LogUtil;->setLogLevel(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ssologlevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "commandid"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    :cond_0
    return-void
.end method

.method public final setLoginAccoutType(I)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput p1, v0, Lo/fv;->f:I

    return-void
.end method

.method public final setLoginCancelEnable(Z)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean p1, v0, Lo/fv;->e:Z

    return-void
.end method

.method public final setLoginPageCancelBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->m:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-void
.end method

.method public final setLogo(I)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput p1, v0, Lo/fv;->g:I

    return-void
.end method

.method public final setLogoutCallBack(Lcom/cmcc/migusso/sdk/common/ICallBack;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->n:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/cmcc/util/ResourceUtil;->setRjavaPkgName(Ljava/lang/String;)V

    return-void
.end method

.method public final setThemeColor(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    invoke-static {}, Lo/fv;->a()Lo/fv;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setThirdAuthn(ILjava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V
    .locals 3

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v1, v0, Lo/fv;->i:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lo/fv;->i:Ljava/util/Map;

    :cond_0
    iget-object v0, v0, Lo/fv;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/fw;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-direct {v2, p2, p3, p4}, Lo/fw;-><init>(Ljava/lang/String;ZLcom/cmcc/migusso/sdk/common/ThirdEventListener;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lo/fh;->setAppid(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean p3, v0, Lo/fv;->t:Z

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p4, v0, Lo/fv;->u:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p5, v0, Lo/fv;->v:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/fv;->h:Z

    return-void
.end method

.method public final setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lo/fh;->setThirdLoginConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-boolean p6, v0, Lo/fv;->h:Z

    return-void
.end method

.method public final setTokenProcess(Lcom/cmcc/migusso/sdk/common/TokenProcess;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-void
.end method

.method public final setUpgradeCallBack(Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->l:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-void
.end method

.method public final setUserProtocol(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    return-void
.end method

.method public final setVisitorCallBack(Lcom/cmcc/migusso/sdk/common/JSONCallBack;)V
    .locals 0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    return-void
.end method

.method public final showBindAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "showBindAccountInfo, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iput-object p1, v1, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iput-object p2, v1, Lo/fv;->b:Ljava/lang/String;

    const-string/jumbo v1, "LoginId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "avatar"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openIdType"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final showSmsRemindDialog(Landroid/content/Context;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v0, "showSmsRemindDialog, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lo/ge;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v1, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v2, v0, Lo/fv;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "datasms"

    iget-object v5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/fh;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lo/fl;

    invoke-direct {v1, p0, p1}, Lo/fl;-><init>(Lo/fh;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final showThirdPartAppNotInstallToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cmcc/util/SimpleToast;

    invoke-direct {v0, p1, p2}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcc/util/SimpleToast;->show()V

    return-void
.end method

.method public final showUpgradeDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u8d26\u53f7\u7c7b\u578b\u4e0d\u652f\u6301"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lo/gw;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/gw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/gw;->show()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u8d26\u53f7\u7c7b\u578b\u4e0d\u652f\u6301"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final showUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "showUserInfo, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iput-object p1, v1, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iput-object p2, v1, Lo/fv;->b:Ljava/lang/String;

    const-string/jumbo v1, "LoginId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final showUserProtocol(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "sourceid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/JSONCallBack;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "startBindPhone, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "errorCode"

    const v2, 0x18f3b

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "errorString"

    const-string/jumbo v2, "\u8f93\u5165\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p9, :cond_1

    invoke-interface {p9, v1}, Lcom/cmcc/migusso/sdk/common/JSONCallBack;->callback(Lorg/json/JSONObject;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "JSONException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    const-string/jumbo v0, "startBindPhone, input param is error."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v0, "errorCode"

    const v2, 0x18f3b

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "errorString"

    const-string/jumbo v2, "\u8f93\u5165\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz p9, :cond_1

    invoke-interface {p9, v1}, Lcom/cmcc/migusso/sdk/common/JSONCallBack;->callback(Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "JSONException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p1, v0, Lo/fv;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p2, v0, Lo/fv;->b:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p9, v0, Lo/fv;->o:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "openID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "authntype"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bindType"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tips"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "needLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "businesstoken"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public final startScanQRCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/QrResultListener;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lo/fh;->setAppid(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p4, v0, Lo/fv;->x:Lcom/cmcc/migusso/sdk/auth/QrResultListener;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/QRCodeScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startThirdpartyLogin(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 9

    const/4 v1, 0x3

    const v2, 0x18f3b

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-nez p5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object p5, v0, Lo/fv;->w:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2, v7}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    if-ne v1, p4, :cond_3

    invoke-static {}, Lo/fs;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lo/fp;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/fp;-><init>(Lo/fh;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    if-ne v3, p4, :cond_5

    const-string/jumbo v4, "QQ"

    :goto_1
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->i:Ljava/util/Map;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_9

    :cond_4
    invoke-static {v2, v7}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    if-ne v6, p4, :cond_6

    const-string/jumbo v4, "WECHAT"

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne v0, p4, :cond_7

    const-string/jumbo v4, "WEIBO"

    goto :goto_1

    :cond_7
    if-ne v1, p4, :cond_8

    const-string/jumbo v4, "ALIPAY"

    goto :goto_1

    :cond_8
    move-object v4, v7

    goto :goto_1

    :cond_9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lo/fw;->b:Z

    if-eqz v1, :cond_10

    iget-object v5, v0, Lo/fw;->a:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->t:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/fh;->b:Landroid/content/Context;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-object v1, v1, Lo/fv;->u:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v2

    iget-object v2, v2, Lo/fv;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x4

    if-ne v0, p4, :cond_c

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->q:Ljava/util/HashMap;

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_b

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_b
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v8

    if-ne v6, p4, :cond_e

    invoke-virtual {v8}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x18fa0

    const-string/jumbo v1, " \u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0, v1}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_c
    if-ne v6, p4, :cond_d

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->r:Ljava/util/HashMap;

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    goto :goto_2

    :cond_d
    if-ne v3, p4, :cond_11

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->s:Ljava/util/HashMap;

    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    goto :goto_2

    :cond_e
    invoke-virtual {v8}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v8, v3}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    new-instance v0, Lo/fq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/fq;-><init>(Lo/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    invoke-virtual {v8, v0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    invoke-virtual {v8, v7}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {v2, v7}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_11
    move-object v0, v7

    move-object v1, v7

    goto :goto_2
.end method

.method public final thirdPartyBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 7

    if-nez p11, :cond_0

    const-string/jumbo v1, "thirdPartyBindPhone, listener is null."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p11

    iput-object v0, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "thirdPartyBindPhone, input param is null."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v1, 0x18f3b

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lo/fh;->g:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "upLoadAvatar running."

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v1, 0x18f3c

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/fh;->g:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "username"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v2, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "accesstoken"

    invoke-virtual {v2, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "consumerkey"

    invoke-virtual {v2, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "newmsisdn"

    invoke-virtual {v2, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "validcode"

    move-object/from16 v0, p9

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bindType"

    move-object/from16 v0, p10

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "needLogin"

    invoke-virtual {v2, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x1c

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p8

    invoke-direct/range {v1 .. v6}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v2, v1}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto/16 :goto_0
.end method

.method public final unBindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "unBindAccount start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p8, :cond_0

    const-string/jumbo v0, "unBindAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p8, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "unBindAccount, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "unBindAccount running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openIDType"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "consumerkey"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "accesstoken"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uid"

    invoke-virtual {v1, v0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x39

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final unRegisterCallBacks()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iput-object v1, v0, Lo/fv;->k:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object v1, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v1, v0, Lo/fv;->l:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object v1, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v1, v0, Lo/fv;->m:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object v1, v0, Lo/fv;->i:Ljava/util/Map;

    return-void
.end method

.method public final upLoadAvatar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "upLoadAvatar start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "upLoadAvatar, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "upLoadAvatar, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "upLoadAvatar running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "avatarfilepath"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final upgradeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "upgradeUser start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "upgradeUser, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "upgradeUser, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "upgradeUser running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "username"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1a

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    .locals 6

    const-string/jumbo v0, "verifyOldPhone start."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string/jumbo v0, "verifyOldPhone, listener is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p5, p0, Lo/fh;->c:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "verifyOldPhone, input param is null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo/fh;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "verifyOldPhone running."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fh;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fh;->g:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "oldmsisdn"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "validcode"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/fh;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lo/fh;->k:Lcom/cmcc/migusso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lo/fh;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method
