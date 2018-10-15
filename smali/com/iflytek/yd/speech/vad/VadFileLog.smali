.class public Lcom/iflytek/yd/speech/vad/VadFileLog;
.super Ljava/lang/Object;


# static fields
.field public static final FORMAT_ALAW:S = 0x6s

.field public static final FORMAT_PCM:S = 0x1s

.field public static final FORMAT_ULAW:S = 0x7s

.field private static final TAG:Ljava/lang/String; = "SPEECH_VadFileLog"

.field private static mBitsPerSample:S

.field private static mIsLogOpen:Z

.field private static mLogPath:Ljava/lang/String;

.field private static mNumChannels:S

.field private static mOriginalFile:Ljava/io/RandomAccessFile;

.field private static mOriginalFileBytes:I

.field private static mSampleRate:I

.field private static mSentFile:Ljava/io/RandomAccessFile;

.field private static mSentFileBytes:I

.field private static nHeadLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    sput-object v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    sput-object v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFileBytes:I

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFileBytes:I

    const/16 v0, 0x2c

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->nHeadLen:I

    const/4 v0, 0x1

    sput-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mNumChannels:S

    const/16 v0, 0x10

    sput-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mBitsPerSample:S

    const/16 v0, 0x3e80

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSampleRate:I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mLogPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    sget v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFileBytes:I

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeHeader(Ljava/io/RandomAccessFile;I)V

    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    :cond_2
    :goto_1
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    sget v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFileBytes:I

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeHeader(Ljava/io/RandomAccessFile;I)V

    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_1
    move-exception v0

    sput-object v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    throw v0
.end method

.method private static getDateTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "_yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static open(I)V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFileBytes:I

    sput v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFileBytes:I

    sput p0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSampleRate:I

    invoke-static {}, Lcom/iflytek/yd/speech/vad/VadFileLog;->getDateTime()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iflytek/yd/speech/vad/VadFileLog;->mLogPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "vad_original"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    sget v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->nHeadLen:I

    new-array v0, v0, [B

    sget-object v2, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    sget v4, Lcom/iflytek/yd/speech/vad/VadFileLog;->nHeadLen:I

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iflytek/yd/speech/vad/VadFileLog;->mLogPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "vad_sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    sget v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->nHeadLen:I

    new-array v0, v0, [B

    sget-object v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    sget v3, Lcom/iflytek/yd/speech/vad/VadFileLog;->nHeadLen:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setVadLogOpen(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    return-void
.end method

.method public static setVadLogPath(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mLogPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/RandomAccessFile;I)V
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "RIFF"

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x24

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x10

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const-string/jumbo v2, "WAVE"

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "fmt "

    move v0, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    sget-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mNumChannels:S

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    sget v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSampleRate:I

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x10

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    sget-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mNumChannels:S

    sget v2, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSampleRate:I

    mul-int/2addr v0, v2

    sget-short v2, Lcom/iflytek/yd/speech/vad/VadFileLog;->mBitsPerSample:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v2, v0, 0x10

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    sget-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mNumChannels:S

    sget-short v2, Lcom/iflytek/yd/speech/vad/VadFileLog;->mBitsPerSample:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    sget-short v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mBitsPerSample:S

    shr-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    const-string/jumbo v0, "data"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method private static writeId(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/RandomAccessFile;I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public static writeOriginalData([B)V
    .locals 3

    sget-boolean v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    const-string/jumbo v0, "SPEECH_VadFileLog"

    const-string/jumbo v1, " writeOriginalData file is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v0, p0

    :try_start_0
    sget-object v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    sget v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFileBytes:I

    add-int/2addr v0, v1

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mOriginalFileBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeShort(Ljava/io/RandomAccessFile;S)V
    .locals 1

    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public static writeVadSent([B)V
    .locals 3

    sget-boolean v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mIsLogOpen:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    const-string/jumbo v0, "SPEECH_VadFileLog"

    const-string/jumbo v1, " writeSentData file is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v0, p0

    :try_start_0
    sget-object v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    sget v1, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFileBytes:I

    add-int/2addr v0, v1

    sput v0, Lcom/iflytek/yd/speech/vad/VadFileLog;->mSentFileBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_VadFileLog"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
