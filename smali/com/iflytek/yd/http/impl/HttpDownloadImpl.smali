.class public Lcom/iflytek/yd/http/impl/HttpDownloadImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/http/impl/OnHttpTransListener;
.implements Lcom/iflytek/yd/http/interfaces/HttpDownload;


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field private static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field private static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field private static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field private static final DOWNLOAD_TEMP_EXTENSION:Ljava/lang/String; = ".tmp"

.field private static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final MIN_PROGRESS_CALLBACK_TIME:I = 0x28

.field static final TAG:Ljava/lang/String; = "HttpDownload"

.field private static sRandom:Ljava/util/Random;


# instance fields
.field private mBytesRead:J

.field private mBytesTotal:J

.field private mCancel:Z

.field private mCover:Z

.field private mDownloadFileStream:Ljava/io/FileOutputStream;

.field private mErrorDetail:Ljava/lang/String;

.field private mExtension:Ljava/lang/String;

.field private mFileDir:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mHttpClients:Lcom/iflytek/yd/http/impl/a;

.field private mId:J

.field private mLastBytesReadWhenChangeProgress:J

.field private mLastTimeChangeProgress:J

.field private mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

.field private mMinBytesStepToChangeProgress:J

.field private mSpecifiedPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;-><init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(ILcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;-><init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V

    return-void
.end method

.method public constructor <init>(JILcom/iflytek/yd/http/interfaces/HttpContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mId:J

    iput p3, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mType:I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p4}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/http/impl/a;-><init>(Lcom/iflytek/yd/http/impl/OnHttpTransListener;)V

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p4}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/HttpHost;)V

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-interface {p4}, Lcom/iflytek/yd/http/interfaces/HttpContext;->getUserPasswordCred()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/auth/Credentials;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/iflytek/yd/http/impl/a;

    invoke-direct {v0, p0}, Lcom/iflytek/yd/http/impl/a;-><init>(Lcom/iflytek/yd/http/impl/OnHttpTransListener;)V

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    goto :goto_0
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ".html"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_1

    const-string/jumbo v0, ".txt"

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    const-string/jumbo v0, ".bin"

    goto :goto_0
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "downloadfile"

    :cond_2
    return-object v0

    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v1, v0

    :goto_1
    const v0, 0x3b9aca00

    if-ge v2, v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x9

    if-ge v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    sget-object v4, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->sRandom:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, v2, 0xa

    move v2, v0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private closeDownloadFileStream()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    :cond_0
    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static generateSaveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2, p3}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {p4, v5}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p5}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    return-object v2

    :cond_1
    invoke-static {p4, v1, v2}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v0}, Lcom/iflytek/yd/http/impl/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mId:J

    return-wide v0
.end method

.method public getLastErrorDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mType:I

    return v0
.end method

.method public onBuffer([BI)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    iget-boolean v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    iget-boolean v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    iget-boolean v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastBytesReadWhenChangeProgress:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mMinBytesStepToChangeProgress:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastTimeChangeProgress:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x28

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesTotal:J

    div-long/2addr v4, v6

    long-to-int v1, v4

    iget-object v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    iget-wide v6, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    invoke-interface {v4, v6, v7, v1, p0}, Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;->onProgress(JILcom/iflytek/yd/http/interfaces/HttpDownload;)V

    iget-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    iput-wide v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastBytesReadWhenChangeProgress:J

    iput-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastTimeChangeProgress:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0xc3c0a

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const v0, 0xc3c09

    goto :goto_1
.end method

.method public onCancel()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "HttpDownload"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    :cond_0
    iput-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    invoke-interface {v0, p1, p2, p0}, Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;->onError(ILjava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->closeDownloadFileStream()V

    return-void
.end method

.method public onFinish()V
    .locals 4

    const-string/jumbo v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFinish | cover = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mFilename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSpecifiedPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mSpecifiedPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCover:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mSpecifiedPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mSpecifiedPath:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-boolean v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    invoke-interface {v1, v0, p0}, Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;->onFinish(Ljava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V

    :cond_1
    invoke-direct {p0}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->closeDownloadFileStream()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStart(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    const-string/jumbo v5, ".tmp"

    move-object v1, p4

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->generateSaveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v0, "file name is null"

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    const v0, 0xc3c18

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mExtension:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStart, bytesRead : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStart, filename : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/SDCardHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    sub-long v2, p1, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "availableSpace is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", while left size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    const v0, 0xc3c0a

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_6
    :try_start_0
    iput-wide p1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesTotal:J

    iget-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesTotal:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mMinBytesStepToChangeProgress:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastTimeChangeProgress:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mLastBytesReadWhenChangeProgress:J

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mDownloadFileStream:Ljava/io/FileOutputStream;

    iget-boolean v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCancel:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    iget-object v5, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;->onStart(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/yd/http/interfaces/HttpDownload;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "HttpDownload"

    const-string/jumbo v2, "onStart, create file error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    const v0, 0xc3c0b

    goto/16 :goto_0
.end method

.method public setCredentials(Lorg/apache/http/auth/UsernamePasswordCredentials;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/auth/Credentials;)V

    return-void
.end method

.method public setOnHttpDownloadListener(Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mListener:Lcom/iflytek/yd/http/listener/OnHttpDownloadListener;

    return-void
.end method

.method public setProxy(Lorg/apache/http/HttpHost;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/http/impl/a;->a(Lorg/apache/http/HttpHost;)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "currentPath : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", specifiedPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mErrorDetail:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v2, 0x0

    iput-object v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_0
    iput-object p3, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mSpecifiedPath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    move-wide v0, v2

    :goto_1
    iput-boolean p4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mCover:Z

    iput-wide v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mBytesRead:J

    iget-object v2, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mHttpClients:Lcom/iflytek/yd/http/impl/a;

    invoke-virtual {v2, p1, v0, v1, p5}, Lcom/iflytek/yd/http/impl/a;->a(Ljava/lang/String;JLjava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFilename:Ljava/lang/String;

    move-wide v0, v2

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    move-wide v0, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->mFileDir:Ljava/lang/String;

    :cond_5
    move-wide v0, v2

    goto :goto_1

    :cond_6
    const v0, 0xc3c09

    invoke-virtual {p0, v0, v4}, Lcom/iflytek/yd/http/impl/HttpDownloadImpl;->onError(ILjava/lang/String;)V

    goto :goto_2
.end method
