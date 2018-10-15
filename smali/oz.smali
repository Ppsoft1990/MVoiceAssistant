.class public Loz;
.super Lph;
.source "BasePermissionInterceptor.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lpl;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lpj;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lpj;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "permissionListener"    # Lpj;
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
    .line 32
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lph;-><init>()V

    .line 24
    const-string/jumbo v0, "BasePermissionInterceptor"

    iput-object v0, p0, Loz;->a:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Loz;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Loz;->c:Ljava/util/List;

    .line 35
    iput-object p3, p0, Loz;->e:Lpj;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Loz;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "deniedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "BasePermissionInterceptor"

    const-string/jumbo v1, "startRequestPermission"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Loz;->d()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Loz;->f:J

    .line 79
    iget-object v0, p0, Loz;->b:Landroid/content/Context;

    iget-wide v2, p0, Loz;->f:J

    invoke-static {v0, p1, v2, v3}, Lcom/iflytek/viafly/smartschedule/ui/ActivityJumper;->startRequestPermission(Landroid/content/Context;Ljava/util/ArrayList;J)V

    goto :goto_0
.end method

.method private a(Lpm;)Z
    .locals 6
    .param p1, "event"    # Lpm;

    .prologue
    const/4 v0, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-wide v2, p0, Loz;->f:J

    invoke-virtual {p1}, Lpm;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 115
    const-string/jumbo v1, "BasePermissionInterceptor"

    const-string/jumbo v2, "isEventValid | it\'s not my request"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    .line 41
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "start"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v4, p0, Loz;->b:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loz;->c:Ljava/util/List;

    invoke-static {v4}, Lazz;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    :cond_0
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "start | context or permissions is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "deniedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Loz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "permission":Ljava/lang/String;
    iget-object v5, p0, Loz;->b:Landroid/content/Context;

    invoke-static {v5, v2}, Lpn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v3

    .line 51
    .local v3, "status":Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    new-instance v1, Lpl;

    invoke-direct {v1}, Lpl;-><init>()V

    .line 52
    .local v1, "entity":Lpl;
    invoke-virtual {v1, v2}, Lpl;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v3}, Lpl;->a(Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;)V

    .line 54
    iget-object v5, p0, Loz;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v5, "BasePermissionInterceptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start | permission = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v3, v5, :cond_2

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    .end local v1    # "entity":Lpl;
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "status":Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    :cond_3
    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 63
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "start | deniedList is not empty, start request permissions"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0, v0}, Loz;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-direct {p0}, Loz;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 123
    const-string/jumbo v1, "BasePermissionInterceptor"

    const-string/jumbo v2, "handleResult"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Loz;->e:Lpj;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Loz;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lpl;>;"
    iget-object v1, p0, Loz;->e:Lpj;

    invoke-interface {v1, v0}, Lpj;->onRequestPermissionsResult(Ljava/util/List;)V

    .line 129
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lpl;>;"
    :cond_0
    invoke-virtual {p0}, Loz;->c()V

    .line 130
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Loz;->f()V

    .line 135
    return-void
.end method

.method public onEventMainThread(Lpm;)V
    .locals 6
    .param p1, "event"    # Lpm;

    .prologue
    .line 83
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "onEventMainThread"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, p1}, Loz;->a(Lpm;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "onEventMainThread | event is invalid-->return"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lpm;->b()Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const-string/jumbo v4, "BasePermissionInterceptor"

    const-string/jumbo v5, "isEventValid | event\'s permissions or grantResults is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Loz;->g()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 97
    .local v1, "item":Lpl;
    invoke-virtual {v1}, Lpl;->a()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "permission":Ljava/lang/String;
    iget-object v5, p0, Loz;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl;

    .line 99
    .local v0, "entity":Lpl;
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v5

    invoke-virtual {v0, v5}, Lpl;->a(Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;)V

    goto :goto_1

    .line 106
    .end local v0    # "entity":Lpl;
    .end local v1    # "item":Lpl;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Loz;->g()V

    goto :goto_0
.end method
