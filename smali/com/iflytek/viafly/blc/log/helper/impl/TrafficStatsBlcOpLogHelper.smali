.class public Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;
.super Lwo;
.source "TrafficStatsBlcOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;,
        Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
    }
.end annotation


# static fields
.field private static b:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lwo;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    return-object v0
.end method

.method private a(JJLjava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "upTraffic"    # J
    .param p3, "downTraffic"    # J
    .param p5, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "traffic_up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "traffic_down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v0
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "business"    # Ljava/lang/String;
    .param p2, "upTraffic"    # J
    .param p4, "downTraffic"    # J
    .param p6, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "traffic_up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "traffic_down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-object v0
.end method

.method private b(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;)Ljava/util/HashMap;
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 214
    const/4 v0, 0x0

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 219
    const-string/jumbo v1, "scene"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 223
    const-string/jumbo v1, "app_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    const-string/jumbo v1, "package_name"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(JJJLjava/lang/String;)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "upTraffic"    # J
    .param p5, "downTraffic"    # J
    .param p7, "apn"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v7, "FC41016"

    const-string/jumbo v8, "success"

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object/from16 v6, p7

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(JJLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, v7

    move-wide v2, p1

    move-object v4, v8

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;

    .prologue
    .line 130
    const-string/jumbo v0, "TrafficStatsBlcOpLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordJmpOtherApp(), info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v1, "FD41013"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    .line 135
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->b(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 10
    .param p1, "business"    # Ljava/lang/String;
    .param p2, "startMilliSecond"    # J
    .param p4, "upTraffic"    # J
    .param p6, "downTraffic"    # J
    .param p8, "apn"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string/jumbo v7, "FC41017"

    const-string/jumbo v8, "success"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, v7

    move-wide v2, p2

    move-object v4, v8

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
.end method
