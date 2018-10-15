.class public Laqh;
.super Ljava/lang/Object;
.source "MusicHistoryDbManager.java"


# static fields
.field private static a:Laqh;


# instance fields
.field private b:Laqe;

.field private final c:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Laqh;->c:I

    .line 23
    new-instance v0, Laqe;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laqe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laqh;->b:Laqe;

    .line 24
    return-void
.end method

.method public static a()Laqh;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Laqh;->a:Laqh;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Laqh;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Laqh;->a:Laqh;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Laqh;

    invoke-direct {v0}, Laqh;-><init>()V

    sput-object v0, Laqh;->a:Laqh;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Laqh;->a:Laqh;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 1
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Laqh;->b:Laqe;

    invoke-virtual {v0, p1, p2}, Laqe;->a(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 3
    .param p1, "history"    # Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .prologue
    .line 43
    iget-object v1, p0, Laqh;->b:Laqe;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Laqe;->a(I)V

    .line 44
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->r()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 46
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laqe;->a(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    move-result-object v0

    .line 47
    .local v0, "dbResult":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, p1}, Laqe;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 63
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, v0}, Laqe;->b(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 51
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, p1}, Laqe;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    goto :goto_0

    .line 55
    .end local v0    # "dbResult":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    :cond_1
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laqe;->b(Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    move-result-object v0

    .line 56
    .restart local v0    # "dbResult":Lcom/iflytek/viafly/music/business/entry/MusicHistory;
    if-nez v0, :cond_2

    .line 57
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, p1}, Laqe;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, v0}, Laqe;->c(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 60
    iget-object v1, p0, Laqh;->b:Laqe;

    invoke-virtual {v1, p1}, Laqe;->a(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Laqh;->b:Laqe;

    invoke-virtual {v0}, Laqe;->a()V

    .line 77
    return-void
.end method

.method public b(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V
    .locals 2
    .param p1, "history"    # Lcom/iflytek/viafly/music/business/entry/MusicHistory;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/iflytek/viafly/music/business/entry/MusicHistory;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Laqh;->b:Laqe;

    invoke-virtual {v0, p1}, Laqe;->b(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Laqh;->b:Laqe;

    invoke-virtual {v0, p1}, Laqe;->c(Lcom/iflytek/viafly/music/business/entry/MusicHistory;)V

    goto :goto_0
.end method
