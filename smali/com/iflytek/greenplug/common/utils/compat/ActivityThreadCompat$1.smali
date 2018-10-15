.class final Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;
.super Ljava/lang/Object;
.source "ActivityThreadCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->currentActivityThread2()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->activityThreadClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat;->access$002(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    iget-object v2, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v2

    .line 56
    :goto_0
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    iget-object v2, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_4
    iget-object v3, p0, Lcom/iflytek/greenplug/common/utils/compat/ActivityThreadCompat$1;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
