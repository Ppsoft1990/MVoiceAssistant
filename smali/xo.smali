.class public Lxo;
.super Ljava/lang/Object;
.source "StartTimeLogHelper.java"


# static fields
.field private static a:Lxo;

.field private static final d:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private e:Ljava/lang/Object;

.field private f:Lil;

.field private g:Lwy;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lxo;->a:Lxo;

    .line 35
    sget-object v0, Lnk;->a:Ljava/lang/String;

    sput-object v0, Lxo;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxo;->e:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lxo;->h:Landroid/content/Context;

    .line 57
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lxo;->f:Lil;

    .line 58
    invoke-static {p1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v0

    iput-object v0, p0, Lxo;->g:Lwy;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lxo;->a:Lxo;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxo;->a:Lxo;

    .line 52
    :cond_0
    sget-object v0, Lxo;->a:Lxo;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p1}, Lazk;->a(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_1

    .line 101
    const-string/jumbo v4, "StartTimeLogHelper"

    const-string/jumbo v5, "uploadStartTime first install | return"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v4, p0, Lxo;->f:Lil;

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_UPLOAD_STARTTIME"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, "isUploaded":Z
    if-eqz v0, :cond_2

    .line 107
    const-string/jumbo v4, "StartTimeLogHelper"

    const-string/jumbo v5, "uploadStartTime already upload"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    iget-object v4, p0, Lxo;->g:Lwy;

    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lxo;->d()J

    move-result-wide v4

    invoke-virtual {p0}, Lxo;->c()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 113
    .local v2, "times":J
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v1, "timeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "startlogtime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lxo;->g:Lwy;

    const-string/jumbo v5, "IC00014"

    invoke-virtual {v4, v5, v1}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 116
    iget-object v4, p0, Lxo;->f:Lil;

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_UPLOAD_STARTTIME"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lxo;->h:Landroid/content/Context;

    invoke-direct {p0, v0}, Lxo;->b(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public a(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 62
    const-string/jumbo v0, "StartTimeLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare(), startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lxo;->b()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lxo;->b(J)V

    .line 65
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 124
    const-string/jumbo v0, "StartTimeLogHelper"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v2, v3}, Lxo;->b(J)V

    .line 126
    invoke-virtual {p0, v2, v3}, Lxo;->c(J)V

    .line 127
    return-void
.end method

.method public b(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    .line 130
    iget-object v1, p0, Lxo;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iput-wide p1, p0, Lxo;->b:J

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lxo;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-wide v2, p0, Lxo;->b:J

    monitor-exit v1

    return-wide v2

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(J)V
    .locals 3
    .param p1, "endTime"    # J

    .prologue
    .line 141
    iget-object v1, p0, Lxo;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iput-wide p1, p0, Lxo;->c:J

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lxo;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-wide v2, p0, Lxo;->c:J

    monitor-exit v1

    return-wide v2

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
