.class public Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;
.super Ljava/lang/Object;
.source "TitleRedDotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;,
        Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "TitleRedDotManager"

.field private static mInstance:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;


# instance fields
.field private mDotInitListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDotsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotInitListeners:Ljava/util/List;

    .line 36
    return-void
.end method

.method private convertToList(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "dotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/iflytek/viafly/ui/reddot/DotEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/iflytek/viafly/ui/reddot/DotEntity;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mInstance:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mInstance:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mInstance:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    return-object v0
.end method

.method private initDotsList()V
    .locals 7

    .prologue
    .line 67
    const-string/jumbo v2, "TitleRedDotManager"

    const-string/jumbo v3, "initDotsMap"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotInitListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;

    .line 70
    .local v1, "item":Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;
    const-string/jumbo v4, "TitleRedDotManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "InitRedDotInfoListener name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {v1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;->onInitRedDot()Lcom/iflytek/viafly/ui/reddot/DotEntity;

    move-result-object v0

    .line 72
    .local v0, "dotEntity":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .end local v0    # "dotEntity":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    .end local v1    # "item":Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-void
.end method


# virtual methods
.method public dotEntry(Ljava/lang/String;)V
    .locals 5
    .param p1, "dotType"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotInitListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;

    .line 162
    .local v0, "listener":Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;
    iget-object v4, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/reddot/DotEntity;

    .line 163
    .local v1, "target":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    invoke-interface {v0, v1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;->onDotEntry(Lcom/iflytek/viafly/ui/reddot/DotEntity;)V

    goto :goto_1

    .line 165
    .end local v0    # "listener":Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;
    .end local v1    # "target":Lcom/iflytek/viafly/ui/reddot/DotEntity;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDotsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/ui/reddot/DotEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->convertToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->setUpdateDotListener(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V

    .line 58
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->initDotsList()V

    .line 59
    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->convertToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;->onInitFinish(Ljava/util/List;)V

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initDelay(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    .prologue
    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 91
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;-><init>(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 98
    return-void
.end method

.method public registerRedDotInitListener(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotInitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUpdateDotListener(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mListener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    .line 127
    return-void
.end method

.method public unRegisterInitListener(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$InitRedDotInfoListener;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotInitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDot(Lcom/iflytek/viafly/ui/reddot/DotEntity;)V
    .locals 3
    .param p1, "dotEntity"    # Lcom/iflytek/viafly/ui/reddot/DotEntity;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string/jumbo v0, "TitleRedDotManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDot | type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/reddot/DotEntity;->getDotType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mListener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mListener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->mDotsList:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->convertToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;->onUpdateRedDot(Ljava/util/List;)V

    .line 122
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
