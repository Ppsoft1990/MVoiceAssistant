.class public Laqg;
.super Ljava/lang/Object;
.source "MusicFavorDbManager.java"


# static fields
.field private static a:Laqg;


# instance fields
.field private b:Laqd;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Laqd;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laqd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laqg;->b:Laqd;

    .line 23
    return-void
.end method

.method public static a()Laqg;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Laqg;->a:Laqg;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Laqg;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Laqg;->a:Laqg;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Laqg;

    invoke-direct {v0}, Laqg;-><init>()V

    sput-object v0, Laqg;->a:Laqg;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Laqg;->a:Laqg;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .locals 1
    .param p1, "songId"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Laqg;->b:Laqd;

    invoke-virtual {v0, p1, p2}, Laqd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v0

    return-object v0
.end method

.method public a(JI)Ljava/util/List;
    .locals 1
    .param p1, "time"    # J
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicFavor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Laqg;->b:Laqd;

    invoke-virtual {v0, p1, p2, p3}, Laqd;->a(JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V
    .locals 3
    .param p1, "favor"    # Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Laqg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v0

    .line 38
    .local v0, "dbResult":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-nez v0, :cond_0

    .line 39
    iget-object v1, p0, Laqg;->b:Laqd;

    invoke-virtual {v1, p1}, Laqd;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Laqg;->b:Laqd;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laqd;->a(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Laqg;->b:Laqd;

    invoke-virtual {v1, p1}, Laqd;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "lxSongId"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Laqg;->b:Laqd;

    invoke-virtual {v0, p1}, Laqd;->a(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Laqg;->b:Laqd;

    invoke-virtual {v0}, Laqd;->a()V

    .line 60
    return-void
.end method
