.class public Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;
.super Ljava/lang/Object;
.source "ToneSetHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ToneSetHelper"

.field private static volatile mInstance:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;


# instance fields
.field private mITtsListener:Lju;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSpeechService:Lpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper$1;-><init>(Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mITtsListener:Lju;

    .line 22
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 23
    iget-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 24
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mSpeechService:Lpp;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mInstance:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mInstance:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mInstance:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mInstance:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public stopPlay()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 45
    :cond_0
    return-void
.end method
