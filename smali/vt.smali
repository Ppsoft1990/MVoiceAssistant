.class public Lvt;
.super Lvn;
.source "BlcResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvt$a;
    }
.end annotation


# static fields
.field private static e:Lvt;


# instance fields
.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lvt$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;

.field private h:Landroid/util/SparseIntArray;

.field private i:J

.field private j:Lil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lvt;->e:Lvt;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Lvn;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvt;->g:Ljava/lang/Object;

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvt;->i:J

    .line 49
    invoke-virtual {p0, p1}, Lvt;->a(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lvt;->j:Lil;

    .line 51
    invoke-direct {p0}, Lvt;->c()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvt;->f:Ljava/util/HashMap;

    .line 53
    invoke-direct {p0}, Lvt;->d()V

    .line 54
    return-void
.end method

.method public static declared-synchronized b()Lvt;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lvt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lvt;->e:Lvt;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lvt;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lvt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvt;->e:Lvt;

    .line 45
    :cond_0
    sget-object v0, Lvt;->e:Lvt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lvt;->j:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.LAST_GET_PERMISSION"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvt;->i:J

    .line 58
    iget-wide v0, p0, Lvt;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 59
    const-string/jumbo v0, "BlcResourceAdapter"

    const-string/jumbo v1, "loadSavePermission date error,reset to now."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvt;->i:J

    .line 62
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 134
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x22

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    iget-object v0, p0, Lvt;->h:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "BlcResourceAdapter"

    const-string/jumbo v1, "getBlcUrl = http://ydclient.voicecloud.cn/resource/do"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/resource/do"

    return-object v0
.end method

.method public a([Ljava/lang/String;ILvt$a;)V
    .locals 4
    .param p1, "clientId"    # [Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "listener"    # Lvt$a;

    .prologue
    .line 94
    iget-object v1, p0, Lvt;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lvt;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lvt;->a:Lyo;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3, p1}, Lyo;->a(II[Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 112
    const-string/jumbo v1, "BlcResourceAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult | errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lvt;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lvt;->f:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvt$a;

    .line 115
    .local v0, "listener":Lvt$a;
    if-nez p2, :cond_1

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Lvt$a;->onBlcError(ILjava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    monitor-exit v2

    .line 125
    return-void

    .line 120
    :cond_1
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p5, p2}, Lvt$a;->onBlcResult(ILcom/iflytek/yd/business/OperationInfo;)V

    goto :goto_0

    .line 124
    .end local v0    # "listener":Lvt$a;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
