.class public Lawu;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneDataManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

.field private static e:Lawu;


# instance fields
.field private d:Landroid/content/Context;

.field private f:Ljava/lang/Object;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/PERSONALIZED_RINGTONE_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawu;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/LAST_EDITED_PERSONALIZED_RINGTONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawu;->b:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    const-string/jumbo v1, "00000000"

    const-string/jumbo v2, "aisxwz"

    const-string/jumbo v3, "\u840c\u5c0f\u4e38"

    const-string/jumbo v4, "\u65b0\u7684\u4e00\u5929\u53c8\u5f00\u59cb\u4e86\uff0c\u8be5\u8d77\u5e8a\u54af\uff0c\u52aa\u529b\u53d8\u6210\u6709\u94b1\u4eba\u3002"

    const-string/jumbo v5, "image.ic_remind_alarmplayer_norpic"

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lawu;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 27
    sget-object v0, Lawu;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    const-string/jumbo v1, "Asset://ringtone/default_personalized_ring.mp3"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->setAudioPath(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lawu;->f:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lawu;->d:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lawu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lawu;->e:Lawu;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lawu;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lawu;->e:Lawu;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lawu;

    invoke-direct {v0, p0}, Lawu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lawu;->e:Lawu;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lawu;->e:Lawu;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lawu;->c:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    iget-object v1, p0, Lawu;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v2, Lawu;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lawu;->g:Ljava/util/List;

    .line 99
    monitor-exit v1

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v2, p0, Lawu;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lawu;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 109
    :try_start_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    sget-object v3, Lawu;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lawu;->g:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lawu;->g:Ljava/util/List;

    monitor-exit v2

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "PersonalizedRingtoneDataManager"

    const-string/jumbo v3, "getNetRingtoneList failed"

    invoke-static {v1, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
