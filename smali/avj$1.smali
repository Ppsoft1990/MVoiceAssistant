.class Lavj$1;
.super Ljava/lang/Object;
.source "TriggerLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

.field final synthetic b:Lavj;


# direct methods
.method constructor <init>(Lavj;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V
    .locals 0
    .param p1, "this$0"    # Lavj;

    .prologue
    .line 80
    iput-object p1, p0, Lavj$1;->b:Lavj;

    iput-object p2, p0, Lavj$1;->a:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 83
    iget-object v2, p0, Lavj$1;->b:Lavj;

    invoke-static {v2}, Lavj;->a(Lavj;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lavj$1;->b:Lavj;

    invoke-static {v2}, Lavj;->b(Lavj;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "schedule_trigger_run_data.dat"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lavj$1;->a:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    const-string/jumbo v2, "TriggerLogManager"

    const-string/jumbo v4, "saveRunData | finished"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-static {v1}, Lazj;->a(Ljava/io/OutputStream;)V

    .line 95
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "TriggerLogManager"

    const-string/jumbo v4, "readData | close inputstream error"

    invoke-static {v2, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :try_start_3
    invoke-static {v1}, Lazj;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 93
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1}, Lazj;->a(Ljava/io/OutputStream;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
