.class public Lcom/cmcc/migusso/service/SsoService;
.super Landroid/app/Service;
.source "SsoService.java"


# instance fields
.field private a:Lauthcommon/ac;

.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    new-instance v0, Lauthcommon/bn;

    invoke-direct {v0, p0}, Lauthcommon/bn;-><init>(Lcom/cmcc/migusso/service/SsoService;)V

    iput-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->b:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic a(Lcom/cmcc/migusso/service/SsoService;)Lauthcommon/ac;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CONTEXT++++++++++++ onBind"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/service/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    const-string/jumbo v1, "run Service Version [ UnionSDK-20AndriodV3.3.3]."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    invoke-interface {v0}, Lauthcommon/ac;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lauthcommon/c;

    invoke-direct {v0}, Lauthcommon/c;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    invoke-interface {v0, p0}, Lauthcommon/ac;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    const-string/jumbo v1, "SsoService onCreate."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    const-string/jumbo v1, "the version is not encode."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CONTEXT----------current package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/service/SsoService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    const-string/jumbo v1, "run Service Version [UnionSDK-20AndriodV3.3.3]."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lauthcommon/c;

    invoke-direct {v0}, Lauthcommon/c;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    invoke-interface {v0, p0}, Lauthcommon/ac;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "commandid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    invoke-interface {v1}, Lauthcommon/ac;->a()V

    iget-object v1, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    invoke-interface {v1, v0, v3}, Lauthcommon/ac;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    iput-object v3, p0, Lcom/cmcc/migusso/service/SsoService;->a:Lauthcommon/ac;

    :cond_0
    return-void
.end method
