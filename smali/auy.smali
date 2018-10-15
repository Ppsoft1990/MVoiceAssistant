.class public Lauy;
.super Ljava/lang/Object;
.source "ScheduleCreateAudioCach.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static g:Ljava/lang/Object;

.field private static volatile h:Lauy;


# instance fields
.field private d:[B

.field private e:Lcom/iflytek/yd/audio/AmrWbEncode;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lauy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lauy;->a:Ljava/lang/String;

    .line 17
    sget-object v0, Lnk;->a:Ljava/lang/String;

    sput-object v0, Lauy;->b:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lauy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "schedule/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "create_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lauy;->c:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lauy;->g:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lauy;->h:Lauy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lauy;->d:[B

    .line 24
    iput-object v0, p0, Lauy;->e:Lcom/iflytek/yd/audio/AmrWbEncode;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauy;->f:Z

    .line 30
    new-instance v0, Lcom/iflytek/yd/audio/AmrWbEncode;

    invoke-direct {v0}, Lcom/iflytek/yd/audio/AmrWbEncode;-><init>()V

    iput-object v0, p0, Lauy;->e:Lcom/iflytek/yd/audio/AmrWbEncode;

    .line 31
    return-void
.end method

.method public static a()Lauy;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lauy;->h:Lauy;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lauy;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lauy;->h:Lauy;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lauy;

    invoke-direct {v0}, Lauy;-><init>()V

    sput-object v0, Lauy;->h:Lauy;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lauy;->h:Lauy;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(IJ)Ljava/lang/String;
    .locals 2
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lauy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .param p1, "isRecord"    # Z

    .prologue
    .line 48
    sget-object v0, Lauy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecordFlag() , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-boolean p1, p0, Lauy;->f:Z

    .line 50
    return-void
.end method

.method public a(IJ)Z
    .locals 6
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 153
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 156
    :cond_0
    const/4 v1, 0x1

    .line 157
    .local v1, "ret":Z
    sget-object v3, Lauy;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2, p3}, Lauy;->d(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 160
    sget-object v2, Lauy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasAudio(), return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v3

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lauy;->f:Z

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lauy;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAudioCach(), isRecordFlag is false -> return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lauy;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAudioCach()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lauy;->d:[B

    goto :goto_0
.end method

.method public b(IJ)V
    .locals 4
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lauy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteAudio(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Lauy;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lauy;->d(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 176
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(IJ)Ljava/lang/String;
    .locals 4
    .param p1, "scheduleId"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lauy;->a(IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lauy;->d(IJ)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    sget-object v1, Lauy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioPath(), id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lauy;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAllAudio()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v1, Lauy;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lauy;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
