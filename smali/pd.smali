.class public final Lpd;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# static fields
.field private static a:Lpk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)",
            "Lpe;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {p0, p1, p2}, Lpd;->b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    move-result-object v0

    .line 97
    .local v0, "permissionToast":Lpe;
    invoke-virtual {v0}, Lpe;->a()V

    .line 99
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lpd;->a:Lpk;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lpd;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lpd;->a:Lpk;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lpk;

    invoke-direct {v0, p0}, Lpk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpd;->a:Lpk;

    .line 36
    :cond_0
    monitor-exit v1

    .line 38
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 132
    const-string/jumbo v0, "PermissionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPermissionTip | tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v0, "PermissionHelper"

    const-string/jumbo v1, "showPermissionTip | context or tips is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lpd$1;

    invoke-direct {v1, p2, p3, p0, p1}, Lpd$1;-><init>(JLandroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lpj;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "permissionListener"    # Lpj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lpj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Loz;

    invoke-direct {v0, p0, p1, p2}, Loz;-><init>(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 49
    .local v0, "permissionInterceptor":Lpi;
    sget-object v1, Lpd;->a:Lpk;

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lpd;->a:Lpk;

    invoke-virtual {v1, v0}, Lpk;->a(Lpi;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lpn;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lpe;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v1, Lpl;

    invoke-direct {v1}, Lpl;-><init>()V

    .line 104
    .local v1, "permissionEntity":Lpl;
    invoke-virtual {v1, p1}, Lpl;->a(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    invoke-virtual {v1, v2}, Lpl;->a(Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    move-result-object v2

    return-object v2
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)",
            "Lpe;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    new-instance v0, Lpe;

    invoke-direct {v0, p0, p1, p2}, Lpe;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 121
    .local v0, "permissionToast":Lpe;
    return-object v0
.end method
