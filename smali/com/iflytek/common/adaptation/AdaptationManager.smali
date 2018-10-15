.class public Lcom/iflytek/common/adaptation/AdaptationManager;
.super Ljava/lang/Object;
.source "AdaptationManager.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
.implements Lvp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/adaptation/AdaptationManager$SingletionHolder;
    }
.end annotation


# static fields
.field private static final ADAPTER_PLUGIN_FILE_NAME:Ljava/lang/String; = "9E70700C-F4B8-2855-66D1-3ED1E0DB48DE.zip"

.field private static final DATABASE_FILE:Ljava/lang/String; = "adaptation.db"

.field private static final DATABASE_PATH:Ljava/lang/String;

.field private static final DB_VERSION:I = 0xb

.field private static final SETTINGS_KEY_DB_VERSION:Ljava/lang/String; = "adaptation_db_version"

.field private static final SETTINGS_LX_VERSION:Ljava/lang/String; = "adapt_lx_verion"

.field private static final TAG:Ljava/lang/String; = "AdaptationManager"

.field private static final UPLOAD_ADAPT_DUALSIM:Ljava/lang/String; = "upload_adapt_dualsim"

.field private static final UPLOAD_ADAPT_LOG:Ljava/lang/String; = "upload_adapt_log"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAdaptAbility:Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/common/adaptation/AdaptPluginObserver;",
            ">;"
        }
    .end annotation
.end field

.field private plugInVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    .line 162
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->copyDataBase(Landroid/content/Context;)V

    .line 163
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->addObserver(Lcom/iflytek/common/adaptation/AdaptPluginObserver;)V

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/adaptation/AdaptationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/adaptation/AdaptationManager$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/AdaptationManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/common/adaptation/AdaptationManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/adaptation/AdaptationManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/AdaptationManager;->filterAndInstall(Landroid/content/Intent;)V

    return-void
.end method

.method private copyDataBase(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x0

    .line 168
    sget-object v6, Lcom/iflytek/common/adaptation/AdaptationManager;->DATABASE_PATH:Ljava/lang/String;

    .line 169
    .local v6, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "adaptation.db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v3    # "file":Ljava/io/File;
    sget-object v9, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lhl;->h(Landroid/content/Context;)I

    move-result v8

    .line 178
    .local v8, "versionCode":I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 179
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "adaptation_db_version"

    invoke-virtual {v9, v10}, Lil;->d(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 180
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "adapt_lx_verion"

    invoke-virtual {v9, v10, v11}, Lil;->b(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_4

    .line 181
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "adaptation_db_version"

    invoke-virtual {v9, v10, v12}, Lil;->a(Ljava/lang/String;I)V

    .line 183
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "adapt_lx_verion"

    invoke-virtual {v9, v10, v8}, Lil;->a(Ljava/lang/String;I)V

    .line 184
    const/4 v7, 0x0

    .line 185
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 187
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "config/adaptation.db"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 190
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 192
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 193
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x2000

    :try_start_1
    new-array v0, v9, [B

    .line 195
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 196
    .local v1, "count":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_5

    .line 197
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 199
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 200
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v4, :cond_3

    .line 204
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 213
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_3
    return-void

    .line 202
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :cond_5
    if-eqz v5, :cond_6

    .line 204
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 211
    :cond_6
    :goto_4
    if-eqz v7, :cond_4

    .line 213
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 214
    :catch_1
    move-exception v2

    .line 215
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v10, "copyDataBase | close inputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v10, "copyDataBase | close fileOutputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 205
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 206
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v10, "copyDataBase | close fileOutputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 214
    :catch_4
    move-exception v2

    .line 215
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v10, "copyDataBase | close inputStream error"

    invoke-static {v9, v10, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_7

    .line 204
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 211
    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    .line 213
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 217
    :cond_8
    :goto_7
    throw v9

    .line 205
    :catch_5
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "AdaptationManager"

    const-string/jumbo v11, "copyDataBase | close fileOutputStream error"

    invoke-static {v10, v11, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 215
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "AdaptationManager"

    const-string/jumbo v11, "copyDataBase | close inputStream error"

    invoke-static {v10, v11, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 199
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/iflytek/common/adaptation/AdaptationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager$SingletionHolder;->mInstance:Lcom/iflytek/common/adaptation/AdaptationManager;

    return-object v0
.end method

.method private downloadAdapterResult(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 10
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    const-string/jumbo v0, "AdaptationManager"

    const-string/jumbo v1, "downloadAdapterResult | info is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const-string/jumbo v0, "AdaptationManager"

    const-string/jumbo v1, "downloadAdapterResult | url is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;->getVersion()Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "version":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "install_adapter_plugin"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v7

    .line 346
    .local v7, "bInstalled":Z
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "adapter_plugin_version"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, "curVersion":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 349
    invoke-static {v8, v9}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    const-string/jumbo v0, "AdaptationManager"

    const-string/jumbo v1, "downloadAdapterResult | curVersion == version, no need update"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    iput-object v9, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->plugInVersion:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->getPluginPath()Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v1, "AdaptationManager"

    new-instance v2, Lcom/iflytek/common/adaptation/AdaptationManager$1;

    invoke-direct {v2, p0}, Lcom/iflytek/common/adaptation/AdaptationManager$1;-><init>(Lcom/iflytek/common/adaptation/AdaptationManager;)V

    invoke-virtual {v0, v1, v2}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 373
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const/16 v1, 0x9

    const-string/jumbo v2, "adapter_file"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized filterAndInstall(Landroid/content/Intent;)V
    .locals 7
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 400
    monitor-enter p0

    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 406
    .local v2, "type":I
    invoke-direct {p0, v0, v2}, Lcom/iflytek/common/adaptation/AdaptationManager;->isDownloadAdaptCompleted(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    const-string/jumbo v4, "file_path"

    .line 408
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v4, "url"

    .line 410
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "AdaptationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "filterAndInstall | url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", filepath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v4, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    const-string/jumbo v5, "AdaptationManager"

    .line 414
    invoke-virtual {v4, v5}, Lno;->a(Ljava/lang/String;)V

    .line 416
    sget-object v4, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    invoke-virtual {v4, v3}, Lno;->d(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/AdaptationManager;->installAdaptPlugin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static getInstance()Lcom/iflytek/common/adaptation/AdaptationManager;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager$SingletionHolder;->mInstance:Lcom/iflytek/common/adaptation/AdaptationManager;

    return-object v0
.end method

.method private getLastDualsim()Z
    .locals 2

    .prologue
    .line 533
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "upload_adapt_dualsim"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getPluginPath()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 386
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 387
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "9E70700C-F4B8-2855-66D1-3ED1E0DB48DE.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-object v1

    .line 389
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "9E70700C-F4B8-2855-66D1-3ED1E0DB48DE.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private installAdaptPlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-direct {p0, v1}, Lcom/iflytek/common/adaptation/AdaptationManager;->isPluginValid(Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->removePlugin()V

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/iflytek/common/adaptation/AdaptationManager;->installPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)V

    goto :goto_0
.end method

.method private installPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    .prologue
    .line 454
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->installPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 456
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "install_adapter_plugin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 457
    if-eqz p2, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->plugInVersion:Ljava/lang/String;

    .line 461
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "adapter_plugin_version"

    iget-object v2, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->plugInVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private isDownloadAdaptCompleted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 395
    const-string/jumbo v0, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginValid(Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;)Z
    .locals 14
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 477
    if-nez p1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v9

    .line 482
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getCustom()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "custom":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 484
    const-string/jumbo v9, "AdaptationManager"

    const-string/jumbo v11, "isPluginValid | custom is null"

    invoke-static {v9, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 485
    goto :goto_0

    .line 488
    :cond_2
    const-string/jumbo v11, "AdaptationManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isPluginValid | custom = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "models"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 492
    .local v6, "jsonModels":Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 493
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 494
    .local v7, "model":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 495
    if-eqz v7, :cond_3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 494
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 500
    .end local v3    # "i":I
    .end local v7    # "model":Ljava/lang/String;
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 501
    .local v8, "sdk":I
    const/4 v11, 0x7

    if-le v8, v11, :cond_6

    .line 502
    const-string/jumbo v11, "cpus"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 503
    .local v5, "jsonCpus":Lorg/json/JSONArray;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 504
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 505
    .local v0, "cpu":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 506
    if-eqz v0, :cond_5

    .line 507
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_0

    .line 505
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 514
    .end local v0    # "cpu":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "jsonCpus":Lorg/json/JSONArray;
    .end local v6    # "jsonModels":Lorg/json/JSONArray;
    .end local v8    # "sdk":I
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v9, "AdaptationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isPluginValid | parser "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 516
    goto/16 :goto_0

    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v6    # "jsonModels":Lorg/json/JSONArray;
    :cond_6
    move v9, v10

    .line 519
    goto/16 :goto_0
.end method

.method private isUploadAdaptLog()Z
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "upload_adapt_log"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private notifyObserver()V
    .locals 8

    .prologue
    .line 279
    const-string/jumbo v6, "AdaptationManager"

    const-string/jumbo v7, "notifyObserver"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->mAdaptAbility:Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    sget-object v7, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    .line 281
    invoke-interface {v6, v7}, Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;->getSimInfoAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v4

    .line 282
    .local v4, "simInfoAdapter":Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    iget-object v6, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->mAdaptAbility:Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    sget-object v7, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    .line 283
    invoke-interface {v6, v7}, Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;->getCallAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v1

    .line 284
    .local v1, "callAdapter":Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    iget-object v6, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->mAdaptAbility:Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    sget-object v7, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    .line 285
    invoke-interface {v6, v7}, Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;->getMmsAdaptation(Landroid/content/Context;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v2

    .line 288
    .local v2, "mmsAdapter":Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    const/4 v0, 0x0

    .line 289
    .local v0, "arrays":[Lcom/iflytek/common/adaptation/AdaptPluginObserver;
    const/4 v5, 0x0

    .line 290
    .local v5, "size":I
    iget-object v7, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    monitor-enter v7

    .line 291
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 292
    new-array v0, v5, [Lcom/iflytek/common/adaptation/AdaptPluginObserver;

    .line 293
    iget-object v6, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v0, :cond_0

    if-lez v5, :cond_0

    .line 297
    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v0, v6

    .line 298
    .local v3, "observer":Lcom/iflytek/common/adaptation/AdaptPluginObserver;
    invoke-interface {v3, v4, v1, v2}, Lcom/iflytek/common/adaptation/AdaptPluginObserver;->onChange(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;Lcom/iflytek/common/adaptation/call/AbsCallAdapter;Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;)V

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "observer":Lcom/iflytek/common/adaptation/AdaptPluginObserver;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 301
    :cond_0
    return-void
.end method

.method private removePlugin()V
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->uninstallPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 472
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "install_adapter_plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 473
    return-void
.end method

.method private updateFeature()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhy;->a(Landroid/content/Context;)Lhy;

    .line 157
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lgx;->a(Landroid/content/Context;)V

    .line 158
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhp;->a(Landroid/content/Context;)Lhp;

    .line 159
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/iflytek/common/adaptation/AdaptPluginObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/iflytek/common/adaptation/AdaptPluginObserver;

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    monitor-exit v1

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkVersion()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public deleteObserver(Lcom/iflytek/common/adaptation/AdaptPluginObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/iflytek/common/adaptation/AdaptPluginObserver;

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 246
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 247
    monitor-exit v2

    goto :goto_0

    .line 250
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 249
    .restart local v0    # "index":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->updateFeature()V

    .line 112
    sget-object v0, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/AdaptationManager;->addObserver(Lcom/iflytek/common/adaptation/AdaptPluginObserver;)V

    .line 113
    return-void
.end method

.method public initFromPlugin()Z
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "AdaptationManager"

    const-string/jumbo v1, "initFromPlugin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onGetAdaptPluginSuccess(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V
    .locals 2
    .param p1, "clientAdapt"    # Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;

    .prologue
    .line 524
    const-string/jumbo v0, "AdaptationManager"

    const-string/jumbo v1, "onGetAdaptPluginSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/AdaptationManager;->downloadAdapterResult(Lcom/iflytek/viafly/blc/operation/entities/ClientAdapt;)V

    .line 526
    return-void
.end method

.method public onPluginDisabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    .line 274
    const-string/jumbo v0, "AdaptationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginDisabled | event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.USING_ADAPT_PLUGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 276
    return-void
.end method

.method public onPluginEnabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    const/4 v4, 0x5

    .line 255
    const-string/jumbo v1, "AdaptationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginEnabled | event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 259
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    invoke-interface {v1, v4, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    .line 262
    .local v0, "adaptAbility":Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;
    if-eqz v0, :cond_0

    .line 263
    iput-object v0, p0, Lcom/iflytek/common/adaptation/AdaptationManager;->mAdaptAbility:Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;

    .line 264
    invoke-direct {p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->notifyObserver()V

    .line 267
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.USING_ADAPT_PLUGIN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 269
    .end local v0    # "adaptAbility":Lcom/iflytek/framework/plugin/interfaces/adapt/IAdaptAbility;
    :cond_1
    return-void
.end method

.method public uploadAdaptLog()V
    .locals 22

    .prologue
    .line 537
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    invoke-virtual {v2}, Lhy;->b()Z

    move-result v8

    .line 538
    .local v8, "bDualSim":Z
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->isUploadAdaptLog()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/common/adaptation/AdaptationManager;->getLastDualsim()Z

    move-result v2

    if-ne v8, v2, :cond_0

    .line 539
    const-string/jumbo v2, "AdaptationManager"

    const-string/jumbo v6, "uploadAdaptLog | it is not neet upload adapt log"

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 543
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v7, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v18

    .line 546
    .local v18, "simInfoHelper":Lhy;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v19

    .line 547
    .local v19, "simState1":Lcom/iflytek/yd/system/SimState;
    if-nez v19, :cond_1

    .line 548
    sget-object v19, Lcom/iflytek/yd/system/SimState;->ABSENT:Lcom/iflytek/yd/system/SimState;

    .line 550
    :cond_1
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v20

    .line 551
    .local v20, "simState2":Lcom/iflytek/yd/system/SimState;
    if-nez v20, :cond_2

    .line 552
    sget-object v20, Lcom/iflytek/yd/system/SimState;->ABSENT:Lcom/iflytek/yd/system/SimState;

    .line 554
    :cond_2
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v12

    .line 555
    .local v12, "imsi1":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhy;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v13

    .line 556
    .local v13, "imsi2":Ljava/lang/String;
    if-eqz v8, :cond_4

    const/4 v11, 0x1

    .line 557
    .local v11, "dualsim":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 558
    invoke-static {v13}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/yd/system/SimState;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/yd/system/SimState;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "^"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "phoneInfo":Ljava/lang/String;
    const-string/jumbo v2, "phone_info"

    invoke-interface {v7, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 563
    .local v17, "sdk":I
    const-string/jumbo v9, ""

    .line 564
    .local v9, "cpu":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 566
    .local v10, "dualSim":Ljava/lang/String;
    const-string/jumbo v2, "ro.mediatek.platform"

    invoke-static {v2}, Lazk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 567
    .local v16, "platform":Ljava/lang/String;
    const-string/jumbo v2, "ro.mediatek.gemini_support"

    invoke-static {v2}, Lazk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 569
    .local v14, "mtkdualSim":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 570
    move-object/from16 v9, v16

    .line 571
    const-string/jumbo v2, "true"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 572
    const-string/jumbo v10, "true"

    .line 582
    :cond_3
    :goto_2
    const-string/jumbo v2, "cpu"

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo v2, "detect_type"

    sget-object v6, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    .line 584
    invoke-static {v6}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/common/adaptation/detect/DetectType;->toString()Ljava/lang/String;

    move-result-object v6

    .line 583
    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v2, "dual_sim"

    invoke-interface {v7, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v3, "IC00007"

    .line 589
    .local v3, "opCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 590
    .local v4, "startTime":J
    sget-object v2, Lcom/iflytek/common/adaptation/AdaptationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v2

    const-string/jumbo v6, "success"

    invoke-virtual/range {v2 .. v7}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 593
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v6, "upload_adapt_log"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v2, v6, v0}, Lil;->a(Ljava/lang/String;Z)V

    .line 594
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v6, "upload_adapt_dualsim"

    invoke-virtual {v2, v6, v8}, Lil;->a(Ljava/lang/String;Z)V

    .line 595
    const-string/jumbo v2, "AdaptationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "uploadAdaptLog | "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 556
    .end local v3    # "opCode":Ljava/lang/String;
    .end local v4    # "startTime":J
    .end local v9    # "cpu":Ljava/lang/String;
    .end local v10    # "dualSim":Ljava/lang/String;
    .end local v11    # "dualsim":I
    .end local v14    # "mtkdualSim":Ljava/lang/String;
    .end local v15    # "phoneInfo":Ljava/lang/String;
    .end local v16    # "platform":Ljava/lang/String;
    .end local v17    # "sdk":I
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 574
    .restart local v9    # "cpu":Ljava/lang/String;
    .restart local v10    # "dualSim":Ljava/lang/String;
    .restart local v11    # "dualsim":I
    .restart local v14    # "mtkdualSim":Ljava/lang/String;
    .restart local v15    # "phoneInfo":Ljava/lang/String;
    .restart local v16    # "platform":Ljava/lang/String;
    .restart local v17    # "sdk":I
    :cond_5
    const-string/jumbo v10, "false"

    goto/16 :goto_2

    .line 577
    :cond_6
    const/4 v2, 0x7

    move/from16 v0, v17

    if-le v0, v2, :cond_3

    .line 578
    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    goto/16 :goto_2
.end method
