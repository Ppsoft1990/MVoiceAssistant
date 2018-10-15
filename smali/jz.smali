.class public Ljz;
.super Ljava/lang/Object;
.source "WakeConfig.java"


# static fields
.field public static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[I

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Ljz;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Ljz;->b:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Ljz;->c:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Ljz;->d:[I

    .line 68
    iput-object v0, p0, Ljz;->e:[Ljava/lang/String;

    .line 69
    iput-object v0, p0, Ljz;->f:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Ljz;->g:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Ljz;->h:I

    .line 75
    iput-object p1, p0, Ljz;->i:Landroid/content/Context;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljz;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljz;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private g()I
    .locals 4

    .prologue
    .line 199
    sget v1, Ljz;->a:I

    if-nez v1, :cond_0

    .line 201
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP_SENSITIVE"

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;F)F

    move-result v1

    float-to-int v0, v1

    .line 202
    .local v0, "real":I
    sput v0, Ljz;->a:I

    .line 204
    .end local v0    # "real":I
    :cond_0
    sget v1, Ljz;->a:I

    return v1
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .param p1, "resultId"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "minCm":I
    iget-object v1, p0, Ljz;->d:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljz;->d:[I

    array-length v1, v1

    if-lt v1, p1, :cond_0

    .line 166
    iget-object v1, p0, Ljz;->d:[I

    aget v0, v1, p1

    .line 168
    :cond_0
    const-string/jumbo v1, "WakeConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMinCm id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const-string/jumbo v0, "all"

    iput-object v0, p0, Ljz;->c:Ljava/lang/String;

    .line 90
    new-array v0, v3, [I

    invoke-direct {p0}, Ljz;->g()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Ljz;->d:[I

    .line 91
    const-string/jumbo v0, "wake/ivw/ivModel.irf"

    iput-object v0, p0, Ljz;->f:Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "\u7075\u7280\u7075\u7280"
    # const-string/jumbo v1, "\u540c\u5b66\u540c\u5b66"

    aput-object v1, v0, v2

    iput-object v0, p0, Ljz;->e:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljz;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljz;->g:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "WakeConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initWakeSession focus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljz;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljz;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ljz;->d:[I

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ljz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .param p1, "resultId"    # I

    .prologue
    .line 180
    const-string/jumbo v0, ""

    .line 181
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Ljz;->e:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljz;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, p1, :cond_0

    .line 182
    iget-object v1, p0, Ljz;->e:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 184
    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x14

    return v0
.end method

.method public d()[B
    .locals 8

    .prologue
    .line 135
    const/4 v5, 0x1

    new-array v1, v5, [B

    .line 137
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 138
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Ljz;->f:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, p0, Ljz;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 141
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    iget-object v5, p0, Ljz;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 142
    const-string/jumbo v5, "WakeConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljz;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 146
    .local v4, "size":I
    new-array v1, v4, [B

    .line 147
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 148
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v4    # "size":I
    :cond_1
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "WakeConfig"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Ljz;->h:I

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkb;->a(Ljava/lang/String;)V

    .line 196
    return-void
.end method
