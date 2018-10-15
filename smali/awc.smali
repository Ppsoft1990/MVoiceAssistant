.class public Lawc;
.super Ljava/lang/Object;
.source "CreateAudioHelper.java"


# static fields
.field private static a:Lic;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lawc;->a:Lic;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lawc;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 78
    sget-boolean v0, Lawc;->b:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "ScheduleCreateAudioHelper"

    const-string/jumbo v1, "stopPlayCreateAudio()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 83
    sget-object v0, Lawc;->a:Lic;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lawc;->a:Lic;

    invoke-interface {v0, v2}, Lic;->onCompleted(Landroid/media/MediaPlayer;)V

    .line 85
    sput-object v2, Lawc;->a:Lic;

    .line 87
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lawc;->b:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IJLic;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J
    .param p4, "listener"    # Lic;

    .prologue
    const/4 v2, -0x1

    .line 31
    sput-object p4, Lawc;->a:Lic;

    .line 32
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lauy;->c(IJ)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    invoke-virtual {v1, v0}, Lie;->b(Ljava/lang/String;)Z

    .line 35
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    new-instance v2, Lawc$1;

    invoke-direct {v2, p4, p0}, Lawc$1;-><init>(Lic;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lie;->a(Lic;)V

    .line 64
    const/4 v1, 0x1

    sput-boolean v1, Lawc;->b:Z

    .line 65
    invoke-static {p0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    invoke-virtual {v1}, Lie;->a()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lawc;->b:Z

    .line 68
    if-eqz p4, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-interface {p4, v1, v2, v2}, Lic;->onError(Landroid/media/MediaPlayer;II)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lawc;->b:Z

    return p0
.end method
