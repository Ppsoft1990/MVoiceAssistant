.class public Lns;
.super Ljava/lang/Object;
.source "InstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lns$b;,
        Lns$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lns;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sput-object p0, Lns;->a:Landroid/content/Context;

    .line 67
    sget-object v0, Lns$b;->a:Lns;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagePath"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    const-string/jumbo v2, "InstallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installApplication() packagePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 454
    .restart local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "InstallManager"

    const-string/jumbo v3, "installApplication() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lns;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Ljx;->a()Ljx;

    move-result-object v0

    invoke-virtual {v0}, Ljx;->b()V

    .line 473
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "themeFilePath"    # Ljava/lang/String;
    .param p3, "listener"    # Lns$a;

    .prologue
    .line 108
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 111
    :cond_0
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lns$1;

    invoke-direct {v1, p0, p1, p3}, Lns$1;-><init>(Lns;Lcom/iflytek/common/download/entities/DownloadInfo;Lns$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "appFilePath"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string/jumbo v0, "InstallManager"

    const-string/jumbo v1, "installDownloadApp | file path is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lns;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lns;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lns;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lns;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lns;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 176
    .local v4, "isSuccess":Z
    const/4 v3, 0x0

    .line 177
    .local v3, "installResult":Z
    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lns;->b(I)Z

    move-result v3

    .line 181
    :cond_0
    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    .line 182
    :cond_1
    :try_start_0
    const-string/jumbo v7, "InstallManager"

    const-string/jumbo v8, "unzipAndInstallResouce | unzip failure, delete zip file"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v7, 0x3

    if-eq p1, v7, :cond_2

    const/16 v7, 0x8

    if-ne p1, v7, :cond_5

    .line 185
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/download"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v5, v8, v7

    .line 189
    .local v5, "resFile":Ljava/io/File;
    if-eqz v5, :cond_3

    .line 190
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "tmpName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 192
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 193
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 192
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "fileName":Ljava/lang/String;
    const/4 v10, 0x3

    if-ne p1, v10, :cond_4

    const-string/jumbo v10, "Resource_yueyu_1155"

    .line 195
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 188
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "tmpName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v6    # "tmpName":Ljava/lang/String;
    :cond_4
    const/16 v10, 0x8

    if-ne p1, v10, :cond_3

    const-string/jumbo v10, "libaitalk5_res_cnsms_1155"

    .line 198
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 199
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v5    # "resFile":Ljava/io/File;
    .end local v6    # "tmpName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "InstallManager"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    return v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 320
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 321
    :cond_0
    const-string/jumbo v2, "InstallManager"

    const-string/jumbo v3, "file path is null | return"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return v1

    .line 324
    :cond_1
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    const-string/jumbo v2, "InstallManager"

    const-string/jumbo v3, "zip file not exist | return"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Lcom/iflytek/yd/util/FileManager;->unZip(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "InstallManager"

    const-string/jumbo v3, "unzip file exception"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;
    .param p2, "resFilePath"    # Ljava/lang/String;
    .param p3, "listener"    # Lns$a;

    .prologue
    .line 145
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 146
    :cond_0
    const-string/jumbo v0, "InstallManager"

    const-string/jumbo v1, "installDownloadRes | res path or downloadInfo is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lns$2;

    invoke-direct {v1, p0, p1, p3}, Lns$2;-><init>(Lns;Lcom/iflytek/common/download/entities/DownloadInfo;Lns$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string/jumbo v3, "InstallManager"

    const-string/jumbo v4, "unInstallApp | packageName is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 93
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DELETE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    sget-object v3, Lns;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "InstallManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x483

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 220
    sget-object v2, Lns;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lns;->a:Landroid/content/Context;

    .line 222
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/libaitalk5_res_cant.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v2, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    const-string/jumbo v1, "InstallManager"

    const-string/jumbo v2, "installResource | check resource not correct"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    const-string/jumbo v1, "InstallManager"

    const-string/jumbo v2, "installResource | not support offline"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v0, v2, v1}, Lil;->a(Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lns;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b()V

    .line 237
    invoke-direct {p0}, Lns;->c()V

    .line 239
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v0

    sget-object v2, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->LANGUAGE_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v0, v2}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    :goto_1
    move v0, v1

    .line 271
    goto :goto_0

    .line 240
    :cond_3
    const/16 v2, 0x8

    if-ne p1, v2, :cond_7

    .line 241
    sget-object v2, Lns;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lns;->a:Landroid/content/Context;

    .line 243
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/libaitalk5_res_cnsms.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    :cond_4
    const-string/jumbo v1, "InstallManager"

    const-string/jumbo v2, "installResource | check resource not correct"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_5
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b()Z

    move-result v2

    if-nez v2, :cond_6

    .line 250
    const-string/jumbo v1, "InstallManager"

    const-string/jumbo v2, "installResource | not support offline"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 253
    :cond_6
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;I)V

    .line 256
    sget-object v2, Lns;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b()V

    .line 258
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/common/speech/asr/MscManager;->a(I)V

    .line 260
    invoke-direct {p0}, Lns;->c()V

    goto :goto_1

    .line 262
    :cond_7
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/common/speech/asr/MscManager;->a(I)V

    .line 267
    sget-object v0, Lns;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b()V

    .line 269
    invoke-direct {p0}, Lns;->c()V

    goto/16 :goto_1
.end method

.method public c(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 280
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lns;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/libaitalk5_res_cant.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lns;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {p0}, Lns;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Resource_yueyu.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lns;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lns;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/libaitalk5_res_cnsms.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lns;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3
    .param p1, "resPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 303
    const-string/jumbo v1, "InstallManager"

    const-string/jumbo v2, "resPath is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string/jumbo v0, "InstallManager"

    const-string/jumbo v1, "tts res is exist"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "downloadPath":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 385
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 361
    :pswitch_1
    const-string/jumbo v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :pswitch_2
    const-string/jumbo v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    :pswitch_3
    const-string/jumbo v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v1, "Resource_yueyu_1155.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :pswitch_4
    const-string/jumbo v1, "/ViaFly/Music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :pswitch_5
    const-string/jumbo v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, "libaitalk5_res_cnsms_1155.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
