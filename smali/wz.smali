.class public Lwz;
.super Lwo;
.source "CpaOpLogHelper.java"


# static fields
.field private static b:Lwz;

.field private static e:J

.field private static f:Ljava/lang/String;


# instance fields
.field private c:Lwh;

.field private d:Lwg;

.field private g:Lcom/iflytek/yd/business/AppConfig;

.field private h:Lhl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Lwz;->e:J

    .line 39
    const-string/jumbo v0, ""

    sput-object v0, Lwz;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lwz;->a:Landroid/content/Context;

    invoke-static {v0}, Lwh;->a(Landroid/content/Context;)Lwh;

    move-result-object v0

    iput-object v0, p0, Lwz;->c:Lwh;

    .line 53
    iget-object v0, p0, Lwz;->a:Landroid/content/Context;

    invoke-static {v0}, Lwg;->a(Landroid/content/Context;)Lwg;

    move-result-object v0

    iput-object v0, p0, Lwz;->d:Lwg;

    .line 54
    iget-object v0, p0, Lwz;->a:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lwz;->h:Lhl;

    .line 55
    iget-object v0, p0, Lwz;->h:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lwz;->g:Lcom/iflytek/yd/business/AppConfig;

    .line 56
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lwz;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lwz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lwz;->b:Lwz;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lwz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lwz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwz;->b:Lwz;

    .line 47
    :cond_0
    sget-object v0, Lwz;->b:Lwz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_5

    .line 133
    const-string/jumbo v0, "va_cqa_ovs_mapX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "map"

    .line 147
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string/jumbo v0, "va_cqa_ovs_restaurantX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "restaurant"

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v0, "va_cqa_ovs_lbsX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string/jumbo v0, "local_search"

    goto :goto_0

    .line 139
    :cond_2
    const-string/jumbo v0, "va_cqa_ovs_hotelX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string/jumbo v0, "hotel"

    goto :goto_0

    .line 141
    :cond_3
    const-string/jumbo v0, "va_cqa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string/jumbo v0, "dialogva_cqa"

    goto :goto_0

    .line 143
    :cond_4
    const-string/jumbo v0, "chat_\u7b11\u8bdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    const-string/jumbo v0, "dialogjoke"

    goto :goto_0

    .line 147
    :cond_5
    const-string/jumbo v0, "dialog"

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p5, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 158
    monitor-enter p0

    if-nez p1, :cond_0

    .line 159
    :try_start_0
    const-string/jumbo v1, "BlcOpLogHelper"

    const-string/jumbo v2, "saveCallLog NULL code"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-object v0

    .line 162
    :cond_0
    :try_start_1
    const-string/jumbo v1, "LX_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const-string/jumbo v1, "BlcOpLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appendCallLog error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_1
    :try_start_2
    sget-object v1, Lwz;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p5, :cond_2

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v8, Lwz;->e:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x1388

    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 169
    const-string/jumbo v1, "BlcOpLogHelper"

    const-string/jumbo v2, "appendCallLog error time short"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lwz;->e:J

    .line 175
    sput-object p1, Lwz;->f:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lwz;->d:Lwg;

    invoke-virtual {v0, p1}, Lwg;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lwz;->c:Lwh;

    invoke-virtual {v0, p1, p2, p3}, Lwh;->a(Ljava/lang/String;J)Lkh;

    move-result-object v6

    .line 182
    .local v6, "result":Lkh;
    if-nez v6, :cond_3

    .line 183
    const-string/jumbo v0, ""

    goto :goto_0

    .line 187
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v5, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_4

    .line 190
    move-object v5, p5

    .line 193
    :cond_4
    const-string/jumbo v0, "auditkey"

    invoke-virtual {v6}, Lkh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v6}, Lkh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lwo;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 196
    invoke-virtual {v6}, Lkh;->a()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "backFocus"    # Ljava/lang/String;
    .param p2, "backAction"    # Ljava/lang/String;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "json"    # Ljava/lang/String;

    .prologue
    .line 99
    move-object v7, p1

    .line 101
    .local v7, "focusAction":Ljava/lang/String;
    const-string/jumbo v0, "microblog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {p4}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "sms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    :cond_0
    :goto_0
    const-string/jumbo v0, "LX_100022"

    invoke-static {v7, v0}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "cpaCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, "timeStamp":J
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lwz;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "auditCode":Ljava/lang/String;
    return-object v6

    .line 106
    .end local v1    # "cpaCode":Ljava/lang/String;
    .end local v2    # "timeStamp":J
    .end local v6    # "auditCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string/jumbo v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 110
    :cond_2
    const-string/jumbo v0, "contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string/jumbo v0, "send"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "create"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    const-string/jumbo v0, "launch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "search"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 118
    :cond_6
    const-string/jumbo v0, "dialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p2}, Lwz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "com.iflytek.cmcc"

    invoke-virtual {p0, p1, v0}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "callerPkg"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    .local v2, "timeStamp":J
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lwz;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "focus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "LX_100009"

    invoke-static {p1, v0}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "cpaCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "timeStamp":J
    const-string/jumbo v4, "com.iflytek.cmcc"

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lwz;->b(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 69
    return-void
.end method
