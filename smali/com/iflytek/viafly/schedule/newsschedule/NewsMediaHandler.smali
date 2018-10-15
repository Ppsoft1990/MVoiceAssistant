.class public final Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
.super Lauz;
.source "NewsMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;
    }
.end annotation


# static fields
.field private static volatile h:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;


# instance fields
.field public a:Lpp;

.field public b:Z

.field public c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

.field public volatile d:Z

.field f:Ljava/lang/String;

.field g:Lju;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/res/AssetFileDescriptor;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lauz$a;

.field private q:Ljava/util/Timer;

.field private r:Lava;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->h:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lauz;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    .line 45
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    .line 47
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b:Z

    .line 48
    sget-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 50
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->n:J

    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->q:Ljava/util/Timer;

    .line 58
    new-instance v0, Lava;

    invoke-direct {v0}, Lava;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->r:Lava;

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f:Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$2;-><init>(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    .line 71
    sput-object p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->h:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    return p1
.end method

.method public static a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->h:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isStop"    # Z

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.NEWS_TTS_STOP_OR_START_ANIMATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "isStop"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Lauz$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->p:Lauz$a;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->k:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->q:Ljava/util/Timer;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    invoke-virtual {v0}, Ltd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->r:Lava;

    const-wide/32 v2, 0xea60

    new-instance v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$1;-><init>(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)V

    invoke-virtual {v0, v2, v3, v1}, Lava;->a(JLava$a;)V

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    const-string/jumbo v1, "ringtone/notice.mp3"

    invoke-static {v0, v1}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)V

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->r:Lava;

    invoke-virtual {v0}, Lava;->a()V

    .line 257
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V
    .locals 12
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p3, "listener"    # Lauz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;",
            "Lauz$a;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "schedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 81
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->p:Lauz$a;

    .line 82
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "isNewsBroadcastSuccess"

    invoke-virtual {v5, v6}, Lil;->c(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    .line 87
    .local v1, "iflySetting":Lil;
    const-string/jumbo v5, "isNewsBroadcastFromNewsMedia"

    invoke-virtual {v1, v5, v9}, Lil;->a(Ljava/lang/String;Z)V

    .line 88
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "newsRequestFailTip"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->m:Ljava/lang/String;

    .line 90
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "alertBroadcastNewsItems"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    .line 92
    new-instance v5, Lpp;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    .line 96
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string/jumbo v6, "ringtone/news.mp3"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->k:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-static {v5}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v5

    invoke-virtual {v5}, Ltd;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    iget-boolean v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 105
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->m:Ljava/lang/String;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v7

    invoke-virtual {v7, v10}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v5, v6, v7, v8}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 114
    :goto_1
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Z)V

    .line 115
    iput-boolean v9, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b:Z

    .line 116
    iput-object v10, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f:Ljava/lang/String;

    .line 117
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 118
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 121
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->n:J

    .line 127
    :cond_2
    :goto_2
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iput v11, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    .line 108
    const-string/jumbo v4, "\u6b63\u5728\u4e3a\u60a8\u64ad\u62a5\u65b0\u95fb"

    .line 109
    .local v4, "text":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v2, "params":Landroid/os/Bundle;
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 111
    const-string/jumbo v5, "stream"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v5, v4, v2, v6}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_1

    .line 125
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v4    # "text":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d()V

    goto :goto_2
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    .line 132
    invoke-virtual {v0, v1}, Lpp;->e(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    const-string/jumbo v1, " "

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v2

    invoke-virtual {v2, v3}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a(Z)V

    .line 137
    sget-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 138
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b()V

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->p:Lauz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->p:Lauz$a;

    invoke-interface {v0}, Lauz$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->p:Lauz$a;

    invoke-interface {v0}, Lauz$a;->b()V

    .line 146
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->b()V

    .line 150
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    .line 155
    invoke-virtual {v0, v1}, Lpp;->e(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-static {v0}, Lawk;->a(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v0, v1}, Lpp;->a(Lju;)V

    .line 174
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 175
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v0, v1}, Lpp;->b(Lju;)V

    .line 181
    :cond_0
    return-void
.end method

.method public h()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-static {v3}, Lawk;->a(Landroid/content/Context;)V

    .line 185
    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->n:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->n:J

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    .line 191
    invoke-virtual {v3, v4}, Lpp;->e(Lju;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v3, v4}, Lpp;->c(Lju;)V

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-nez v3, :cond_2

    .line 195
    new-instance v3, Lpp;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-direct {v3, v4}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    if-eqz v3, :cond_4

    .line 198
    iput v8, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->i:I

    .line 199
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "isNewsBroadcastSuccess"

    invoke-virtual {v3, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "serializePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 204
    .local v0, "iflySetting":Lil;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "newsRequestFailTip"

    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->m:Ljava/lang/String;

    .line 206
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "alertBroadcastNewsItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    .line 208
    iget-boolean v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->l:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->j:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->m:Ljava/lang/String;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v5

    invoke-virtual {v5, v9}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v3, v4, v5, v6}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 216
    .end local v0    # "iflySetting":Lil;
    .end local v1    # "serializePath":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 212
    .restart local v0    # "iflySetting":Lil;
    .restart local v1    # "serializePath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "\u6b63\u5728\u4e3a\u60a8\u64ad\u62a5\u65b0\u95fb"

    .line 213
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a:Lpp;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v4

    invoke-virtual {v4, v9}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g:Lju;

    invoke-virtual {v3, v2, v4, v5}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0
.end method
