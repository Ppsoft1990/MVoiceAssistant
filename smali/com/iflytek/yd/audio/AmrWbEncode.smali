.class public Lcom/iflytek/yd/audio/AmrWbEncode;
.super Ljava/lang/Object;


# static fields
.field public static final DEF_MODE_LEVEL:I = 0x5

.field public static final ERR_AMR_INIT:I = -0x3

.field public static final ERR_AMR_OBJ:I = -0x2

.field public static final ERR_OUT_FILE:I = -0x1

.field private static final HEAD:Ljava/lang/String; = "#!AMR-WB\n"

.field public static final MODE_LEVEL_MAX:I = 0x8

.field public static final MODE_LEVEL_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SPEECH_EncodeV4"


# instance fields
.field private mOutFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string/jumbo v0, "SPEECH_EncodeV4"

    const-string/jumbo v1, "close ok"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    :cond_0
    invoke-static {}, Lcom/iflytek/yd/vad/AmrEncode;->dinit()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SPEECH_EncodeV4"

    const-string/jumbo v1, "close IOException"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "#!AMR-WB\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SPEECH_EncodeV4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open FileNotFoundException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v4, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "SPEECH_EncodeV4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open IOException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/iflytek/yd/vad/AmrEncode;->init(I)I

    move-result v0

    const-string/jumbo v1, "SPEECH_EncodeV4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public write([BI)I
    .locals 4

    iget-object v0, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPEECH_EncodeV4"

    const-string/jumbo v1, "write file not create;"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/iflytek/yd/vad/AmrEncode;->input([BI)[B

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/yd/audio/AmrWbEncode;->mOutFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const-string/jumbo v1, "SPEECH_EncodeV4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SPEECH_EncodeV4"

    const-string/jumbo v1, "write IOException"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
