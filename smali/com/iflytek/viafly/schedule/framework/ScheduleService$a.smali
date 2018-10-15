.class final Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;
.super Landroid/os/Handler;
.source "ScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ScheduleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/ScheduleService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .line 208
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, -0x1

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    const-string/jumbo v9, "ServiceHandler"

    const-string/jumbo v10, "handleMessage() start..."

    invoke-static {v9, v10}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 218
    .local v1, "data":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 223
    .local v8, "typeString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 224
    .local v6, "scheduleBroadcastTriggerTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    const-string/jumbo v9, "handle_type"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 226
    const-string/jumbo v9, "schedule_broadcast_trigger_time"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 230
    const/4 v7, 0x0

    .line 232
    .local v7, "type":Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    :try_start_0
    invoke-static {v8}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 236
    :goto_0
    const-string/jumbo v9, "ServiceHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "------->> handle_type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    if-ne v7, v9, :cond_2

    .line 240
    const-string/jumbo v9, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 241
    .local v2, "datedScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v9

    invoke-interface {v9, v2}, Lave;->a(Ljava/util/ArrayList;)V

    .line 277
    .end local v2    # "datedScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v7    # "type":Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->c(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)V

    .line 278
    const-string/jumbo v9, "ServiceHandler"

    const-string/jumbo v10, "handleMessage() end!"

    invoke-static {v9, v10}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 233
    .restart local v7    # "type":Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->alert:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    if-ne v7, v9, :cond_4

    .line 244
    const-string/jumbo v9, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 246
    .local v5, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {}, Lavm;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 247
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->b(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 248
    :try_start_1
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9, v5, v6}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    .line 249
    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 251
    :cond_3
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9, v5, v6}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    .end local v5    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->register_available:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    if-ne v7, v9, :cond_5

    .line 255
    const-string/jumbo v9, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 256
    .local v0, "availableScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lawe;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 257
    .end local v0    # "availableScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_5
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->show_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    if-ne v7, v9, :cond_6

    .line 258
    const-string/jumbo v9, "id"

    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, "id":I
    if-eq v4, v12, :cond_1

    .line 260
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v9

    invoke-interface {v9, v4}, Lave;->c(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 262
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v9

    invoke-interface {v9, v4}, Lave;->d(I)V

    goto :goto_1

    .line 270
    .end local v4    # "id":I
    :cond_6
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->delete_delay_cach:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    if-ne v7, v9, :cond_1

    .line 271
    const-string/jumbo v9, "id"

    invoke-virtual {v1, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 272
    .restart local v4    # "id":I
    if-eq v4, v12, :cond_1

    .line 273
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$a;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v9

    invoke-interface {v9, v4}, Lave;->b(I)V

    goto/16 :goto_1
.end method
