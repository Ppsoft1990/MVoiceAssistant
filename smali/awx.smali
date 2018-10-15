.class public Lawx;
.super Lvx;
.source "PersonalizedRingtoneRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawx$a;
    }
.end annotation


# static fields
.field private static c:Lawx;


# instance fields
.field private a:Lawx$a;

.field private b:Landroid/content/Context;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lvx;-><init>(Landroid/content/Context;)V

    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lawx;->d:J

    .line 43
    iput-object p1, p0, Lawx;->b:Landroid/content/Context;

    .line 44
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do"

    .line 46
    .local v0, "requestUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1008"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lawx;->setServerUrl(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lawx;->setNeedGZip(Z)V

    .line 48
    new-instance v1, Lawx$1;

    invoke-direct {v1, p0}, Lawx$1;-><init>(Lawx;)V

    invoke-virtual {p0, v1}, Lawx;->setOperationListener(Lyn;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lawx;J)J
    .locals 1
    .param p0, "x0"    # Lawx;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lawx;->d:J

    return-wide p1
.end method

.method static synthetic a(Lawx;)Lawx$a;
    .locals 1
    .param p0, "x0"    # Lawx;

    .prologue
    .line 30
    iget-object v0, p0, Lawx;->a:Lawx$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lawx;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v0, Lawx;->c:Lawx;

    if-nez v0, :cond_1

    .line 103
    const-class v1, Lawx;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lawx;->c:Lawx;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lawx;

    invoke-direct {v0, p0}, Lawx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lawx;->c:Lawx;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lawx;->c:Lawx;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lawx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lawx;

    .prologue
    .line 30
    iget-object v0, p0, Lawx;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Z)J
    .locals 12
    .param p1, "isForceRefresh"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 113
    iget-wide v8, p0, Lawx;->d:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_0

    .line 115
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    const-string/jumbo v8, "sendRequest is waiting for result"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-wide v8, p0, Lawx;->d:J

    .line 132
    :goto_0
    return-wide v8

    .line 119
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "LAST_REQUEST_SUCCESS_TIME"

    invoke-virtual {v7, v8}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v2

    .line 120
    .local v2, "lastRequestSuccTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 121
    .local v4, "now":J
    sub-long v0, v4, v2

    .line 123
    .local v0, "diffTime":J
    if-nez p1, :cond_1

    cmp-long v7, v0, v10

    if-ltz v7, :cond_1

    const-wide/32 v8, 0x5265c00

    cmp-long v7, v0, v8

    if-gez v7, :cond_1

    .line 125
    iput-wide v10, p0, Lawx;->d:J

    .line 132
    :goto_1
    iget-wide v8, p0, Lawx;->d:J

    goto :goto_0

    .line 127
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v6, "paramElement":Lorg/json/JSONObject;
    const-string/jumbo v7, "1008"

    const/16 v8, 0x44

    invoke-virtual {p0, v7, v8, v6}, Lawx;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v8

    iput-wide v8, p0, Lawx;->d:J

    goto :goto_1
.end method

.method public a(Lawx$a;)V
    .locals 0
    .param p1, "listener"    # Lawx$a;

    .prologue
    .line 146
    iput-object p1, p0, Lawx;->a:Lawx$a;

    .line 147
    return-void
.end method

.method public cancelRequest()V
    .locals 2

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lawx;->d:J

    .line 138
    invoke-super {p0}, Lvx;->cancelRequest()V

    .line 139
    return-void
.end method
