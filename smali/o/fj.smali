.class final Lo/fj;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/fj;->b:Lo/fh;

    iput-object p2, p0, Lo/fj;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lo/fj;->b:Lo/fh;

    invoke-static {p2}, Lcom/cmcc/migusso/service/ISsoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cmcc/migusso/service/ISsoService;

    move-result-object v1

    invoke-static {v0, v1}, Lo/fh;->a(Lo/fh;Lcom/cmcc/migusso/service/ISsoService;)Lcom/cmcc/migusso/service/ISsoService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.cmcc.migusso.service.SsoService get token, mIService = null."

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/fj;->b:Lo/fh;

    invoke-static {v0}, Lo/fh;->c(Lo/fh;)Lcom/cmcc/migusso/service/ISsoService;

    move-result-object v0

    iget-object v1, p0, Lo/fj;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lo/fj;->b:Lo/fh;

    invoke-static {v2}, Lo/fh;->b(Lo/fh;)Lcom/cmcc/migusso/service/IPCCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmcc/migusso/service/ISsoService;->callback(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    iget-object v0, p0, Lo/fj;->b:Lo/fh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/fh;->a(Lo/fh;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lo/fj;->b:Lo/fh;

    const v2, 0x18e71

    invoke-static {v2}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lo/fh;->a(Lo/fh;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lo/fj;->b:Lo/fh;

    const v1, 0x18e72

    invoke-static {v1}, Lo/ad;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lo/fh;->a(Lo/fh;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lo/fj;->b:Lo/fh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/fh;->a(Lo/fh;Z)Z

    return-void
.end method
