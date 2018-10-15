.class final Lauthcommon/bt;
.super Ljava/lang/Object;
.source "TrackPointUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lauthcommon/bs;


# direct methods
.method constructor <init>(Lauthcommon/bs;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/bt;->a:Lauthcommon/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lauthcommon/bt;->a:Lauthcommon/bs;

    invoke-static {v0}, Lauthcommon/bs;->a(Lauthcommon/bs;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TrackPoint URL : "

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getHostLogBpAdd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logData : "

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lauthcommon/bt;->a:Lauthcommon/bs;

    invoke-static {v1}, Lauthcommon/bs;->b(Lauthcommon/bs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getHostLogBpAdd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lauthcommon/bp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauthcommon/bt;->a:Lauthcommon/bs;

    invoke-static {v0}, Lauthcommon/bs;->c(Lauthcommon/bs;)V

    iget-object v0, p0, Lauthcommon/bt;->a:Lauthcommon/bs;

    invoke-static {v0}, Lauthcommon/bs;->b(Lauthcommon/bs;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "logSum"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cmcc/migusso/ssoutil/SpUtils;->save2Sp(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
