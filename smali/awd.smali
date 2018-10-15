.class public Lawd;
.super Ljava/lang/Object;
.source "RingToneHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lawd;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v1, 0x0

    sput-boolean v1, Lawd;->a:Z

    .line 92
    :try_start_0
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    invoke-virtual {v1}, Lod;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    invoke-virtual {v1}, Lod;->d()V

    .line 94
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "----->> IflyRingToneManager | stop palying ring tone success!"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "stopRingTone | isPlaying = false-->return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "stopRingTone() error!"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtonePath"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    const-string/jumbo v2, "ScheduleRingToneHelper"

    const-string/jumbo v3, "startRingTone()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 47
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2, v1}, Lod;->a(Landroid/content/res/AssetFileDescriptor;)V

    .line 48
    const/4 v2, 0x1

    sput-boolean v2, Lawd;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ScheduleRingToneHelper"

    const-string/jumbo v3, "startRingTone()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtonePath"    # Ljava/lang/String;
    .param p2, "onRemindCustomListener"    # Lod$a;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "startAudioWithListener()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lod;->a(Ljava/lang/String;Lod$a;)V

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lawd;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "startAudioWithListener()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isPersonal"    # Z
    .param p2, "ringtonePath"    # Ljava/lang/String;
    .param p3, "onRemindCustomListener"    # Lod$a;

    .prologue
    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "startRingTone()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lod;->a(ZLjava/lang/String;Lod$a;)V

    .line 65
    const/4 v1, 0x1

    sput-boolean v1, Lawd;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleRingToneHelper"

    const-string/jumbo v2, "startRingTone()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lawd;->a:Z

    return v0
.end method
