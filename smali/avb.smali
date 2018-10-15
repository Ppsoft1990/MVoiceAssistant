.class public Lavb;
.super Ljava/lang/Object;
.source "ScheduleMediaManager.java"


# static fields
.field public static a:Z

.field private static volatile b:Lavb;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Laus;

.field private e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

.field private f:Laxb;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Object;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private j:Lauz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lavb;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavb;->h:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lavb;->i:Ljava/util/List;

    .line 54
    new-instance v0, Lavb$1;

    invoke-direct {v0, p0}, Lavb$1;-><init>(Lavb;)V

    iput-object v0, p0, Lavb;->j:Lauz$a;

    .line 79
    iput-object p1, p0, Lavb;->c:Landroid/content/Context;

    .line 80
    new-instance v0, Laus;

    invoke-direct {v0, p1}, Laus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavb;->d:Laus;

    .line 81
    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .line 82
    new-instance v0, Laxb;

    invoke-direct {v0, p1}, Laxb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lavb;->f:Laxb;

    .line 83
    return-void
.end method

.method public static a(Landroid/content/Context;)Lavb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v0, Lavb;->b:Lavb;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lavb;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lavb;->b:Lavb;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lavb;

    invoke-direct {v0, p0}, Lavb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavb;->b:Lavb;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lavb;->b:Lavb;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lavb;)V
    .locals 0
    .param p0, "x0"    # Lavb;

    .prologue
    .line 32
    invoke-direct {p0}, Lavb;->c()V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lavb;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lavb;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v2

    goto :goto_0

    .end local v0    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lavb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lavb;

    .prologue
    .line 32
    iget-object v0, p0, Lavb;->i:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 16

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->i:Ljava/util/List;

    invoke-static {v13}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 108
    sget-object v13, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 206
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lavb;->h:Ljava/lang/Object;

    monitor-enter v14

    .line 112
    const/4 v11, 0x0

    .line 113
    .local v11, "type":Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    const/4 v2, 0x0

    .line 114
    .local v2, "destSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->i:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 115
    .local v5, "item":Ljava/util/Map;, "Ljava/util/Map<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 116
    :cond_1
    sget-object v13, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 117
    monitor-exit v14

    goto :goto_0

    .line 208
    .end local v5    # "item":Ljava/util/Map;, "Ljava/util/Map<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 120
    .restart local v5    # "item":Ljava/util/Map;, "Ljava/util/Map<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    move-object v11, v0

    .line 122
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 123
    if-eqz v11, :cond_3

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 124
    :cond_3
    sget-object v13, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 125
    monitor-exit v14

    goto :goto_0

    .line 128
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_5

    .line 130
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->i:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_5
    :goto_1
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "commonSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v10, "tvSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v12, "weatherSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v7, "newsSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 142
    .local v8, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v8, :cond_6

    .line 156
    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v9

    .line 157
    .local v9, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v15, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v15, v9, :cond_7

    .line 158
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    .end local v1    # "commonSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v7    # "newsSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v9    # "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .end local v10    # "tvSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v12    # "weatherSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "ScheduleMediaManager"

    const-string/jumbo v15, ""

    invoke-static {v13, v15, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 159
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "commonSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v7    # "newsSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v9    # "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .restart local v10    # "tvSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v12    # "weatherSchedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_7
    sget-object v15, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v15, v9, :cond_8

    .line 160
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    .end local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v9    # "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    :cond_9
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List;)V

    .line 171
    const/4 v13, 0x0

    sput-boolean v13, Lavb;->a:Z

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->d:Laus;

    move-object/from16 v0, p0

    iget-object v15, v0, Lavb;->j:Lauz$a;

    invoke-virtual {v13, v11, v1, v15}, Laus;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    if-eqz v13, :cond_a

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    const/16 v15, 0x70

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 175
    .local v6, "msg":Landroid/os/Message;
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    monitor-exit v14

    goto/16 :goto_0

    .line 179
    :cond_b
    invoke-static {v12}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 181
    invoke-interface {v2, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List;)V

    .line 183
    const/4 v13, 0x0

    sput-boolean v13, Lavb;->a:Z

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->f:Laxb;

    move-object/from16 v0, p0

    iget-object v15, v0, Lavb;->j:Lauz$a;

    invoke-virtual {v13, v11, v12, v15}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    if-eqz v13, :cond_c

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    const/16 v15, 0x70

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 187
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 190
    .end local v6    # "msg":Landroid/os/Message;
    :cond_c
    monitor-exit v14

    goto/16 :goto_0

    .line 191
    :cond_d
    invoke-static {v7}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 193
    invoke-interface {v2, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List;)V

    .line 195
    const/4 v13, 0x0

    sput-boolean v13, Lavb;->a:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    if-eqz v13, :cond_e

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->g:Landroid/os/Handler;

    const/16 v15, 0x70

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 198
    .restart local v6    # "msg":Landroid/os/Message;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 201
    .end local v6    # "msg":Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lavb;->j:Lauz$a;

    invoke-virtual {v13, v11, v7, v15}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V

    .line 203
    monitor-exit v14

    goto/16 :goto_0

    .line 205
    :cond_f
    sget-object v13, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 206
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lavb;->c:Landroid/content/Context;

    invoke-static {v0}, Lawc;->a(Landroid/content/Context;)V

    .line 275
    return-void
.end method

.method public a(IJLic;)V
    .locals 2
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J
    .param p4, "listener"    # Lic;

    .prologue
    .line 266
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Default:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    invoke-virtual {p0, v0}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 267
    iget-object v0, p0, Lavb;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lawc;->a(Landroid/content/Context;IJLic;)V

    .line 268
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mScheduleTriggerDialogHandler"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lavb;->g:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    .prologue
    .line 231
    const-string/jumbo v0, "ScheduleMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAllMedia(), event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lavb;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lavb;->d:Laus;

    invoke-virtual {v0}, Laus;->a()V

    .line 234
    iget-object v0, p0, Lavb;->f:Laxb;

    invoke-virtual {v0}, Laxb;->a()V

    .line 235
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Screen_Off:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    if-eq v0, p1, :cond_0

    .line 236
    iget-object v0, p0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b()V

    .line 239
    :cond_0
    iget-object v0, p0, Lavb;->c:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->d()V

    .line 240
    iget-object v0, p0, Lavb;->c:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->b()V

    .line 241
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "schedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const-string/jumbo v0, "ScheduleMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMedia(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz p1, :cond_0

    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p1, p2}, Lavb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b()V

    .line 96
    :cond_2
    iget-object v0, p0, Lavb;->d:Laus;

    invoke-virtual {v0}, Laus;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lavb;->f:Laxb;

    invoke-virtual {v0}, Laxb;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lavb;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 278
    const-string/jumbo v0, "ScheduleMediaManager"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lavb;->d:Laus;

    invoke-virtual {v0}, Laus;->b()V

    .line 280
    iget-object v0, p0, Lavb;->e:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c()V

    .line 281
    iget-object v0, p0, Lavb;->f:Laxb;

    invoke-virtual {v0}, Laxb;->b()V

    .line 282
    return-void
.end method
