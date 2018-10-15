.class public Lawr;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawr$a;
    }
.end annotation


# static fields
.field private static b:Lawr;


# instance fields
.field private a:Lawr$a;

.field private c:Landroid/content/Context;

.field private d:Lie;

.field private e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

.field private f:Lic;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lawr;->d:Lie;

    .line 93
    new-instance v0, Lawr$1;

    invoke-direct {v0, p0}, Lawr$1;-><init>(Lawr;)V

    iput-object v0, p0, Lawr;->f:Lic;

    .line 29
    iput-object p1, p0, Lawr;->c:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lawr;->c:Landroid/content/Context;

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    iput-object v0, p0, Lawr;->d:Lie;

    .line 31
    return-void
.end method

.method static synthetic a(Lawr;)Lawr$a;
    .locals 1
    .param p0, "x0"    # Lawr;

    .prologue
    .line 20
    iget-object v0, p0, Lawr;->a:Lawr$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lawr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lawr;->b:Lawr;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lawr;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lawr;->b:Lawr;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lawr;

    invoke-direct {v0, p0}, Lawr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lawr;->b:Lawr;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lawr;->b:Lawr;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lawr;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 0
    .param p0, "x0"    # Lawr;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 20
    iput-object p1, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .param p1, "localAudioUrl"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v6, "PersonalizedRingtoneAudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playVoice() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v4, 0x0

    .line 126
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string/jumbo v6, "Asset://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    const-string/jumbo v6, "Asset://"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "assetFile":Ljava/lang/String;
    const-string/jumbo v6, "PersonalizedRingtoneAudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playVoice() assetFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v6, p0, Lawr;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 130
    invoke-virtual {v6, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 131
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_2

    .line 132
    iget-object v6, p0, Lawr;->d:Lie;

    invoke-virtual {v6, v0}, Lie;->a(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "assetFile":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 150
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :goto_2
    const/4 v4, 0x0

    .line 158
    :cond_1
    :goto_3
    iget-object v6, p0, Lawr;->d:Lie;

    iget-object v7, p0, Lawr;->f:Lic;

    invoke-virtual {v6, v7}, Lie;->a(Lic;)V

    .line 159
    iget-object v6, p0, Lawr;->d:Lie;

    invoke-virtual {v6}, Lie;->a()V

    goto :goto_0

    .line 134
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "assetFile":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lawr;->d:Lie;

    invoke-virtual {v6, v1}, Lie;->b(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 145
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "assetFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string/jumbo v6, "PersonalizedRingtoneAudioManager"

    const-string/jumbo v7, "playVoice() setDataSource failed"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    if-eqz v4, :cond_1

    .line 150
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    :goto_5
    const/4 v4, 0x0

    goto :goto_3

    .line 137
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 140
    iget-object v6, p0, Lawr;->d:Lie;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lie;->a(Ljava/io/FileDescriptor;)V

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 142
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_4
    iget-object v6, p0, Lawr;->d:Lie;

    invoke-virtual {v6, p1}, Lie;->b(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 151
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 152
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "PersonalizedRingtoneAudioManager"

    const-string/jumbo v7, "playVoice() close fis failed"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 151
    :catch_2
    move-exception v2

    .line 152
    const-string/jumbo v6, "PersonalizedRingtoneAudioManager"

    const-string/jumbo v7, "playVoice() close fis failed"

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 148
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v4, :cond_5

    .line 150
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 154
    :goto_7
    const/4 v4, 0x0

    :cond_5
    throw v6

    .line 151
    :catch_3
    move-exception v2

    .line 152
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "PersonalizedRingtoneAudioManager"

    const-string/jumbo v8, "playVoice() close fis failed"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 148
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 145
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method static synthetic b(Lawr;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 1
    .param p0, "x0"    # Lawr;

    .prologue
    .line 20
    iget-object v0, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lawr;->d:Lie;

    invoke-virtual {v0}, Lie;->d()V

    .line 80
    iget-object v0, p0, Lawr;->a:Lawr$a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lawr;->a:Lawr$a;

    iget-object v1, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {v0, v1}, Lawr$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lawr;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lawr$a;)V
    .locals 1
    .param p1, "listener"    # Lawr$a;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lawr;->a:Lawr$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 49
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-nez v1, :cond_2

    .line 50
    :cond_0
    iget-object v1, p0, Lawr;->a:Lawr$a;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lawr;->a:Lawr$a;

    invoke-interface {v1, p1}, Lawr$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lawr;->c()V

    .line 56
    iput-object p1, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 57
    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 58
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lawp;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v0}, Lawp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 60
    iget-object v1, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lawp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Asset://"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 64
    :cond_3
    iget-object v1, p0, Lawr;->a:Lawr$a;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lawr;->a:Lawr$a;

    invoke-interface {v1, p1}, Lawr$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "audioPath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 71
    .restart local v0    # "audioPath":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-direct {p0, v0}, Lawr;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lawr;->e:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawr;->d:Lie;

    .line 172
    invoke-virtual {v0}, Lie;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
