.class public Lcom/iflytek/yd/system/CpuFeature;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SPEECH_CpuFeature"

.field private static mCpuFeature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuFeature()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/yd/system/CpuFeature;->readCpuInfo()V

    :cond_0
    sget-object v0, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    return-object v0
.end method

.method public static isARM_NEON()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iflytek/yd/system/CpuFeature;->readCpuInfo()V

    :cond_0
    sget-object v1, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    const-string/jumbo v2, "neon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    const-string/jumbo v2, "NEON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static readCpuInfo()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "Features"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-object v0, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "SPEECH_CpuFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CPU INFO:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/yd/system/CpuFeature;->mCpuFeature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_CpuFeature"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
