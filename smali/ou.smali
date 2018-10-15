.class public final Lou;
.super Ljava/lang/Object;
.source "PermissionImpl.java"

# interfaces
.implements Lok;
.implements Lop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lou$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Loq;

.field private c:Lor;

.field private d:Lom;

.field private e:Lou$a;

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/PermissionApp;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lou;->f:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lou;->a:Landroid/content/Context;

    .line 60
    new-instance v1, Loq;

    iget-object v2, p0, Lou;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Loq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lou;->b:Loq;

    .line 61
    new-instance v1, Lor;

    iget-object v2, p0, Lou;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lou;->c:Lor;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lou;->h:Ljava/util/List;

    .line 63
    new-instance v0, Lov;

    iget-object v1, p0, Lou;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lov;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "permissionLog":Lov;
    invoke-virtual {v0}, Lov;->a()V

    .line 65
    new-instance v1, Lou$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lou$a;-><init>(Lou;Lou$1;)V

    iput-object v1, p0, Lou;->e:Lou$a;

    .line 66
    return-void
.end method

.method static synthetic a(Lou;J)J
    .locals 1
    .param p0, "x0"    # Lou;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lou;->g:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lcom/iflytek/common/permission/data/PermissionApp;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/PermissionApp;",
            ">;)",
            "Lcom/iflytek/common/permission/data/PermissionApp;"
        }
    .end annotation

    .prologue
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/PermissionApp;>;"
    const/4 v0, 0x0

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 228
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    iget-object v2, p0, Lou;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/permission/data/PermissionApp;

    .line 233
    .local v1, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    new-instance v0, Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-direct {v0}, Lcom/iflytek/common/permission/data/PermissionApp;-><init>()V

    .line 235
    .local v0, "newApp":Lcom/iflytek/common/permission/data/PermissionApp;
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppId(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppPriority(I)V

    .line 238
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageVersion(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lou;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-object v0, p0, Lou;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lou;Lom;)Lom;
    .locals 0
    .param p0, "x0"    # Lou;
    .param p1, "x1"    # Lom;

    .prologue
    .line 26
    iput-object p1, p0, Lou;->d:Lom;

    return-object p1
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 184
    iget-object v1, p0, Lou;->e:Lou$a;

    invoke-virtual {v1}, Lou$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 186
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 187
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lou;->e:Lou$a;

    invoke-virtual {v1, v0}, Lou$a;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method

.method static synthetic a(Lou;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lou;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lou;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lou;Z)Z
    .locals 0
    .param p0, "x0"    # Lou;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lou;->i:Z

    return p1
.end method

.method static synthetic b(Lou;)Lor;
    .locals 1
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-object v0, p0, Lou;->c:Lor;

    return-object v0
.end method

.method static synthetic c(Lou;)Lom;
    .locals 1
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-object v0, p0, Lou;->d:Lom;

    return-object v0
.end method

.method static synthetic d(Lou;)J
    .locals 2
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-wide v0, p0, Lou;->g:J

    return-wide v0
.end method

.method static synthetic e(Lou;)Z
    .locals 1
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-boolean v0, p0, Lou;->i:Z

    return v0
.end method

.method static synthetic f(Lou;)Loq;
    .locals 1
    .param p0, "x0"    # Lou;

    .prologue
    .line 26
    iget-object v0, p0, Lou;->b:Loq;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lou;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lou;->c:Lor;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lou;->c:Lor;

    invoke-virtual {v0}, Lor;->b()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "permissionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lou;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lou;->c:Lor;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lou;->c:Lor;

    invoke-virtual {v0, p1}, Lor;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string/jumbo v0, "PermissionImpl"

    const-string/jumbo v1, "handleAppChange packageName is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string/jumbo v0, "PermissionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAppChange action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lou;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/util/List;)V
    .locals 6
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/PermissionApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/PermissionApp;>;"
    const-string/jumbo v2, "PermissionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPermissionAppCallback errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lou;->g:J

    .line 156
    iget-object v3, p0, Lou;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 157
    if-nez p1, :cond_6

    .line 158
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    const/4 v2, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lou;->a(IILjava/lang/Object;)V

    .line 160
    monitor-exit v3

    .line 181
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/permission/data/PermissionApp;

    .line 164
    .local v1, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    iget-object v4, p0, Lou;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Loy;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/PermissionApp;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    iget-object v4, p0, Lou;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v1}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v0    # "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 169
    .restart local v0    # "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    iget-object v2, p0, Lou;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 170
    const/4 v2, 0x1

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lou;->a(IILjava/lang/Object;)V

    .line 180
    .end local v0    # "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    monitor-exit v3

    goto :goto_0

    .line 173
    .restart local v0    # "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v2, p0, Lou;->b:Loq;

    if-eqz v2, :cond_4

    .line 174
    iget-object v2, p0, Lou;->b:Loq;

    invoke-virtual {v2, v0, p0}, Loq;->a(Ljava/util/List;Lop;)J

    goto :goto_2

    .line 178
    .end local v0    # "appIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, p1, v4}, Lou;->a(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public a(Lol;)V
    .locals 2
    .param p1, "callback"    # Lol;

    .prologue
    .line 112
    const-string/jumbo v0, "PermissionImpl"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lou$1;

    invoke-direct {v1, p0, p1}, Lou$1;-><init>(Lou;Lol;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public a(Lom;)V
    .locals 2
    .param p1, "callback"    # Lom;

    .prologue
    .line 107
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lou;->a(IILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 8
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Los;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "configList":Ljava/util/List;, "Ljava/util/List<Los;>;"
    const-string/jumbo v4, "PermissionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPermissionConfigCallback errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v5, p0, Lou;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 197
    if-nez p1, :cond_4

    .line 198
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 199
    :cond_0
    const/4 v4, 0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lou;->a(IILjava/lang/Object;)V

    .line 222
    :goto_0
    iget-object v4, p0, Lou;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 223
    monitor-exit v5

    .line 224
    return-void

    .line 201
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Los;

    .line 202
    .local v1, "config":Los;
    iget-object v6, v1, Los;->a:Ljava/lang/String;

    iget-object v7, p0, Lou;->h:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lou;->a(Ljava/lang/String;Ljava/util/List;)Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v0

    .line 203
    .local v0, "cacheApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-eqz v0, :cond_2

    .line 204
    new-instance v2, Lcom/iflytek/common/permission/data/Permission;

    invoke-direct {v2}, Lcom/iflytek/common/permission/data/Permission;-><init>()V

    .line 205
    .local v2, "permission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v2, v0}, Lcom/iflytek/common/permission/data/Permission;->setPermissionApp(Lcom/iflytek/common/permission/data/PermissionApp;)V

    .line 206
    iget-object v6, v1, Los;->c:[Lcom/iflytek/common/permission/data/PermissionGuide;

    invoke-virtual {v2, v6}, Lcom/iflytek/common/permission/data/Permission;->setPermissionGuides([Lcom/iflytek/common/permission/data/PermissionGuide;)V

    .line 207
    new-instance v3, Lcom/iflytek/common/permission/data/PermissionInfo;

    invoke-direct {v3}, Lcom/iflytek/common/permission/data/PermissionInfo;-><init>()V

    .line 208
    .local v3, "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    iget-object v6, v1, Los;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/iflytek/common/permission/data/PermissionInfo;->setInfoCache(Ljava/lang/String;)V

    .line 209
    iget-object v6, v1, Los;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Lcom/iflytek/common/permission/data/PermissionInfo;->setPermissionInfoMap(Ljava/util/HashMap;)V

    .line 210
    iget-object v6, v1, Los;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/iflytek/common/permission/data/PermissionInfo;->setAppId(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v3}, Lcom/iflytek/common/permission/data/Permission;->setPermissionInfo(Lcom/iflytek/common/permission/data/PermissionInfo;)V

    .line 213
    iget-object v6, p0, Lou;->c:Lor;

    invoke-virtual {v6, v2}, Lor;->a(Lcom/iflytek/common/permission/data/Permission;)V

    goto :goto_1

    .line 223
    .end local v0    # "cacheApp":Lcom/iflytek/common/permission/data/PermissionApp;
    .end local v1    # "config":Los;
    .end local v2    # "permission":Lcom/iflytek/common/permission/data/Permission;
    .end local v3    # "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 216
    :cond_3
    const/4 v4, 0x2

    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Lou;->c:Lor;

    invoke-virtual {v7}, Lor;->b()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Lou;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_4
    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, v4, p1, v6}, Lou;->a(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
