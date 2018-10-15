.class Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;
.super Ljava/lang/Object;
.source "LocalTrafficLooper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LooperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xea60


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isRun:Z

.field private localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 1
    .param p1, "localTrafficLooper"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->TAG:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    .line 102
    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    if-eqz v2, :cond_1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .line 114
    .local v1, "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    iget-boolean v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    if-nez v3, :cond_2

    .line 130
    .end local v1    # "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 115
    .restart local v1    # "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->onBeginCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v1    # "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-wide/32 v2, 0xea60

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 118
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u8f6e\u8be2\u65f6\u95f4\u5230\u8fbe"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .line 120
    .restart local v1    # "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    iget-boolean v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->getTrafficLooperStrategy()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;->isTrafficLooper()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->localTrafficLooper:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->onEndCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$LooperTask;->isRun:Z

    .line 106
    return-void
.end method
