.class Laxn;
.super Laxm;
.source "TrafficStatsHelperImpl.java"


# static fields
.field private static p:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:I

.field private f:Laxl;

.field private g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

.field private h:Laxk;

.field private i:Laxk;

.field private j:Laxf;

.field private k:Landroid/net/ConnectivityManager;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Ljava/util/Timer;

.field private n:J

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laxn;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 3
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Laxm;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    .line 41
    const-string/jumbo v0, "TrafficStatsHelperImpl"

    iput-object v0, p0, Laxn;->b:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxn;->d:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Laxn;->e:I

    .line 49
    iput-object v2, p0, Laxn;->f:Laxl;

    .line 50
    iput-object v2, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 51
    iput-object v2, p0, Laxn;->h:Laxk;

    .line 52
    iput-object v2, p0, Laxn;->i:Laxk;

    .line 54
    iput-object v2, p0, Laxn;->j:Laxf;

    .line 56
    iput-object v2, p0, Laxn;->k:Landroid/net/ConnectivityManager;

    .line 57
    iput-object v2, p0, Laxn;->l:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object v2, p0, Laxn;->m:Ljava/util/Timer;

    .line 59
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Laxn;->n:J

    .line 65
    iput-object v2, p0, Laxn;->o:Landroid/os/Handler;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laxn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laxn;->b:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TrafficStatsHelperImpl(), type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laxn;->c:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Laxn;->o:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Laxn;->c:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Laxn;->k:Landroid/net/ConnectivityManager;

    .line 88
    iget-object v0, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    iput-object v0, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 91
    :cond_0
    invoke-direct {p0}, Laxn;->b()V

    .line 92
    iget-object v0, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-static {v0}, Laxl;->a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxl;

    move-result-object v0

    iput-object v0, p0, Laxn;->f:Laxl;

    .line 93
    iget-object v0, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-static {v0}, Laxf;->a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxf;

    move-result-object v0

    iput-object v0, p0, Laxn;->j:Laxf;

    .line 94
    return-void
.end method

.method static synthetic a(Laxn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laxn;

    .prologue
    .line 39
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(ZLjava/lang/String;JJJ)V
    .locals 3
    .param p1, "isNetConnected"    # Z
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "upTraffic"    # J
    .param p7, "downTraffic"    # J

    .prologue
    .line 337
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveScene() isNetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", netType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", upTraffic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", downTraffic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    .line 340
    invoke-static {v2, p3, p4}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_APN_TRAFFIC_NET_IS_CONNECTED"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 342
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_APN_TRAFFIC_START_TIME"

    invoke-virtual {v0, v1, p3, p4}, Lil;->a(Ljava/lang/String;J)V

    .line 343
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_APN_TRAFFIC_UP"

    invoke-virtual {v0, v1, p5, p6}, Lil;->a(Ljava/lang/String;J)V

    .line 344
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_APN_TRAFFIC_DOWN"

    invoke-virtual {v0, v1, p7, p8}, Lil;->a(Ljava/lang/String;J)V

    .line 345
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_APN_TRAFFIC_NET_TYPE"

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "netType":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1, p2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    const-string/jumbo v1, "connectivity"

    .line 325
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Laxn;->k:Landroid/net/ConnectivityManager;

    .line 326
    iget-object v1, p0, Laxn;->k:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    .line 327
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 328
    .local v0, "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v2, "isWifiConnected() "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 333
    .end local v0    # "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Laxn;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Laxn;

    .prologue
    .line 39
    iget-object v0, p0, Laxn;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 97
    iget-object v3, p0, Laxn;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 99
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Laxn;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 101
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Laxn;->e:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget v3, p0, Laxn;->e:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 109
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, p0, Laxn;->e:I

    .line 111
    :cond_0
    iget-object v3, p0, Laxn;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initUid(), mUid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Laxn;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 132
    iget-object v0, p0, Laxn;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Laxn;->m:Ljava/util/Timer;

    .line 137
    :try_start_0
    iget-object v0, p0, Laxn;->m:Ljava/util/Timer;

    new-instance v1, Laxn$1;

    invoke-direct {v1, p0}, Laxn$1;-><init>(Laxn;)V

    iget-wide v2, p0, Laxn;->n:J

    iget-wide v4, p0, Laxn;->n:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v1, "startTimer(), start Timer success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v1, "startTimer(), start Timer error!"

    invoke-static {v0, v1, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic c(Laxn;)Z
    .locals 1
    .param p0, "x0"    # Laxn;

    .prologue
    .line 39
    iget-boolean v0, p0, Laxn;->d:Z

    return v0
.end method

.method private d()V
    .locals 11

    .prologue
    .line 184
    sget-object v10, Laxn;->p:Ljava/lang/Object;

    monitor-enter v10

    .line 185
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    iget-object v1, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    iput-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 187
    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-direct {p0}, Laxn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setNetType(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setStartTime(J)V

    .line 189
    iget-object v0, p0, Laxn;->f:Laxl;

    iget v1, p0, Laxn;->e:I

    invoke-virtual {v0, v1}, Laxl;->a(I)Laxk;

    move-result-object v0

    iput-object v0, p0, Laxn;->h:Laxk;

    .line 190
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSession() start traffic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laxn;->h:Laxk;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    iget-object v1, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-ne v0, v1, :cond_1

    .line 194
    const-wide/16 v6, 0x0

    .line 195
    .local v6, "upTraffic":J
    const-wide/16 v8, 0x0

    .line 196
    .local v8, "downTraffic":J
    iget-object v0, p0, Laxn;->h:Laxk;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Laxn;->h:Laxk;

    iget-wide v6, v0, Laxk;->a:J

    .line 198
    iget-object v0, p0, Laxn;->h:Laxk;

    iget-wide v8, v0, Laxk;->b:J

    .line 200
    :cond_0
    invoke-direct {p0}, Laxn;->e()Z

    move-result v2

    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v0}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Laxn;->a(ZLjava/lang/String;JJJ)V

    .line 202
    .end local v6    # "upTraffic":J
    .end local v8    # "downTraffic":J
    :cond_1
    monitor-exit v10

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Laxn;)V
    .locals 0
    .param p0, "x0"    # Laxn;

    .prologue
    .line 39
    invoke-direct {p0}, Laxn;->f()V

    return-void
.end method

.method static synthetic e(Laxn;)V
    .locals 0
    .param p0, "x0"    # Laxn;

    .prologue
    .line 39
    invoke-direct {p0}, Laxn;->d()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Laxn;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Laxn;->h:Laxk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v1, "endSession(), mStartTraffic == null || mStatsData == null"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_1
    sget-object v1, Laxn;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Laxn;->f:Laxl;

    iget v2, p0, Laxn;->e:I

    invoke-virtual {v0, v2}, Laxl;->a(I)Laxk;

    move-result-object v0

    iput-object v0, p0, Laxn;->i:Laxk;

    .line 216
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endSession(), mEndTraffic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laxn;->i:Laxk;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setEndTime(J)V

    .line 218
    invoke-direct {p0}, Laxn;->j()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Laxn;->h:Laxk;

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Laxn;->i:Laxk;

    .line 223
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Laxn;->l:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Laxn$2;

    invoke-direct {v1, p0}, Laxn$2;-><init>(Laxn;)V

    iput-object v1, p0, Laxn;->l:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Laxn;->c:Landroid/content/Context;

    iget-object v3, p0, Laxn;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 261
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_APN_TRAFFIC_NET_IS_CONNECTED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 274
    .local v0, "isNetConnected":Z
    iget-object v1, p0, Laxn;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLastSession(), isNetConnected= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    iget-object v2, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    iput-object v1, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    .line 277
    iget-object v1, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_APN_TRAFFIC_NET_TYPE"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setNetType(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_APN_TRAFFIC_START_TIME"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setStartTime(J)V

    .line 280
    new-instance v1, Laxk;

    invoke-direct {v1}, Laxk;-><init>()V

    iput-object v1, p0, Laxn;->h:Laxk;

    .line 281
    iget-object v1, p0, Laxn;->h:Laxk;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_APN_TRAFFIC_UP"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Laxk;->a:J

    .line 282
    iget-object v1, p0, Laxn;->h:Laxk;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_APN_TRAFFIC_DOWN"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Laxk;->b:J

    .line 284
    iget-object v1, p0, Laxn;->f:Laxl;

    iget v2, p0, Laxn;->e:I

    invoke-virtual {v1, v2}, Laxl;->a(I)Laxk;

    move-result-object v1

    iput-object v1, p0, Laxn;->i:Laxk;

    .line 285
    invoke-direct {p0}, Laxn;->j()V

    .line 287
    :cond_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 8

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "netName":Ljava/lang/String;
    iget-object v5, p0, Laxn;->c:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->c()Z

    move-result v1

    .line 292
    .local v1, "isNetConnected":Z
    if-eqz v1, :cond_1

    .line 293
    const/4 v4, 0x0

    .line 295
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v5, p0, Laxn;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 299
    :goto_0
    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 301
    .local v3, "netType":I
    if-nez v3, :cond_2

    .line 302
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_0
    :goto_1
    const-string/jumbo v5, "UNKNOWN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    iget-object v5, p0, Laxn;->c:Landroid/content/Context;

    invoke-direct {p0, v5}, Laxn;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const-string/jumbo v2, "XWIFI"

    .line 315
    .end local v3    # "netType":I
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_2
    iget-object v5, p0, Laxn;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCurrentNetType(), isNetConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", NetType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v2

    .line 296
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v6, "getActiveNetworkInfo() error!"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "netType":I
    :cond_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 304
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 310
    :cond_3
    const-string/jumbo v2, "XMOBILE"

    goto :goto_2
.end method

.method private j()V
    .locals 12

    .prologue
    .line 352
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    if-nez v8, :cond_0

    .line 353
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v9, "appendTrafficLog() stats data is null"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v8, p0, Laxn;->h:Laxk;

    if-eqz v8, :cond_1

    iget-object v8, p0, Laxn;->i:Laxk;

    if-nez v8, :cond_2

    .line 357
    :cond_1
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v9, "appendTrafficLog(), start traffic or end traffic is null"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :cond_2
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getNetType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 361
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v9, "appendTrafficLog(), netType is null"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_3
    iget-object v8, p0, Laxn;->i:Laxk;

    iget-wide v8, v8, Laxk;->a:J

    iget-object v10, p0, Laxn;->h:Laxk;

    iget-wide v10, v10, Laxk;->a:J

    sub-long v4, v8, v10

    .line 365
    .local v4, "newUptraffic":J
    iget-object v8, p0, Laxn;->i:Laxk;

    iget-wide v8, v8, Laxk;->b:J

    iget-object v10, p0, Laxn;->h:Laxk;

    iget-wide v10, v10, Laxk;->b:J

    sub-long v2, v8, v10

    .line 366
    .local v2, "newDownTraffic":J
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "statistics: new traffic >> up="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "KB, down="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    .line 368
    const-wide/16 v4, 0x0

    .line 370
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_5

    .line 371
    const-wide/16 v2, 0x0

    .line 375
    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v8, v4, v8

    if-gez v8, :cond_6

    const-wide/16 v8, 0x1

    cmp-long v8, v2, v8

    if-ltz v8, :cond_a

    .line 377
    :cond_6
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8, v4, v5}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setUpTraffic(J)V

    .line 378
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8, v2, v3}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setDownTraffic(J)V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 381
    .local v0, "currentTime":J
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v6

    .line 382
    .local v6, "startTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7

    cmp-long v8, v6, v0

    if-lez v8, :cond_8

    .line 383
    :cond_7
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8, v0, v1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setStartTime(J)V

    .line 385
    :cond_8
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getEndTime()J

    move-result-wide v8

    iget-object v10, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v10}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->getStartTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 386
    iget-object v8, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8, v0, v1}, Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;->setEndTime(J)V

    .line 388
    :cond_9
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "appendTrafficLog(), new traffic value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v8, p0, Laxn;->j:Laxf;

    iget-object v9, p0, Laxn;->g:Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;

    invoke-virtual {v8, v9}, Laxf;->a(Lcom/iflytek/viafly/trafficstats/stats/TrafficStatsData;)V

    goto/16 :goto_0

    .line 391
    .end local v0    # "currentTime":J
    .end local v6    # "startTime":J
    :cond_a
    iget-object v8, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v9, "appendTrafficLog(), new traffic value is too small, discard it"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Laxn;->b:Ljava/lang/String;

    const-string/jumbo v1, "startStats()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Laxn;->d:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Laxn;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    sget-object v1, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->All:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-ne v0, v1, :cond_1

    .line 122
    invoke-direct {p0}, Laxn;->h()V

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxn;->d:Z

    .line 126
    invoke-direct {p0}, Laxn;->d()V

    .line 127
    invoke-direct {p0}, Laxn;->g()V

    .line 128
    invoke-direct {p0}, Laxn;->c()V

    goto :goto_0
.end method
