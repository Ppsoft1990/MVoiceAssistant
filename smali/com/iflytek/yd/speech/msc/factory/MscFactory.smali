.class public Lcom/iflytek/yd/speech/msc/factory/MscFactory;
.super Ljava/lang/Object;


# static fields
.field private static mMscLib:Ljava/lang/String;

.field private static mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

.field private static mMscTts:Lcom/iflytek/yd/speech/msc/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;

    const-string/jumbo v0, "msc5_yd_1048"

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscLib:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createMscRecognizer(Landroid/content/Context;Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;Lcom/iflytek/yd/business/AppConfig;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;
    .locals 2

    const-class v1, Lcom/iflytek/yd/speech/msc/factory/MscFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iflytek/yd/speech/msc/a/c;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;Lcom/iflytek/yd/business/AppConfig;)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createMscTtsEngine(Ljava/lang/String;ILcom/iflytek/yd/speech/msc/interfaces/MscConfig;)Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;
    .locals 2

    const-class v1, Lcom/iflytek/yd/speech/msc/factory/MscFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/yd/speech/msc/a/l;-><init>(Ljava/lang/String;ILcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLibName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscLib:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized releaseMscRecognizer()V
    .locals 2

    const-class v1, Lcom/iflytek/yd/speech/msc/factory/MscFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/c;->uninitialize()V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscReco:Lcom/iflytek/yd/speech/msc/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseMscTtsEngine()V
    .locals 2

    const-class v1, Lcom/iflytek/yd/speech/msc/factory/MscFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/l;->destory()V

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscTts:Lcom/iflytek/yd/speech/msc/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setLibName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->mMscLib:Ljava/lang/String;

    return-void
.end method
