.class public Lazy;
.super Ljava/lang/Object;
.source "UidPersistentHelper.java"


# static fields
.field private static final a:[B

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static j:Lazy;


# instance fields
.field private f:Landroid/content/Context;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z

.field private volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lazy;->a:[B

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ViaFly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iflyconfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazy;->b:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ViaFly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iflyconfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazy;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iFlyIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iflyconfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazy;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".iFlyIME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iflyconfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazy;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lazy;->f:Landroid/content/Context;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lazy;->g:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lazy;->c()V

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;)Lazy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lazy;->j:Lazy;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lazy;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lazy;->j:Lazy;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lazy;

    invoke-direct {v0, p0}, Lazy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lazy;->j:Lazy;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lazy;->j:Lazy;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lazy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lazy;

    .prologue
    .line 25
    invoke-direct {p0}, Lazy;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lazy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lazy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lazy;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string/jumbo v3, "UidPersistentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveSdUid uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "file2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 275
    :cond_1
    invoke-direct {p0, p1}, Lazy;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, p2, v4}, Lazy;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "file2":Ljava/io/File;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "UidPersistentHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "append"    # Z

    .prologue
    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x0

    .line 299
    .local v0, "fs":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v0    # "fs":Ljava/io/FileOutputStream;
    .local v1, "fs":Ljava/io/FileOutputStream;
    const/16 v2, 0xa

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 302
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    if-eqz v1, :cond_2

    .line 308
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v1

    .line 311
    .end local v1    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 310
    .end local v0    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "fs":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 312
    .end local v1    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "fs":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 303
    :catch_1
    move-exception v2

    .line 307
    :goto_1
    if-eqz v0, :cond_0

    .line 308
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 310
    :catch_2
    move-exception v2

    goto :goto_0

    .line 304
    :catch_3
    move-exception v2

    .line 307
    :goto_2
    if-eqz v0, :cond_0

    .line 308
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 310
    :catch_4
    move-exception v2

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v2

    .line 307
    :goto_3
    if-eqz v0, :cond_3

    .line 308
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 311
    :cond_3
    :goto_4
    throw v2

    .line 310
    :catch_5
    move-exception v3

    goto :goto_4

    .line 306
    .end local v0    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "fs":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "fs":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 304
    .end local v0    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "fs":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "fs":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 303
    .end local v0    # "fs":Ljava/io/FileOutputStream;
    .restart local v1    # "fs":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "fs":Ljava/io/FileOutputStream;
    .restart local v0    # "fs":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "left"    # Ljava/lang/String;
    .param p3, "right"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    return-void
.end method

.method static synthetic a(Lazy;Z)Z
    .locals 0
    .param p0, "x0"    # Lazy;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lazy;->h:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string/jumbo v7, "UidPersistentHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "querySdUid name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v5, ""

    .line 190
    .local v5, "uid":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v6, v5

    .line 205
    .end local v5    # "uid":Ljava/lang/String;
    .local v6, "uid":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 196
    .end local v6    # "uid":Ljava/lang/String;
    .restart local v5    # "uid":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    invoke-static {v2}, Lazm;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v4

    .line 198
    .local v4, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    if-eqz v4, :cond_1

    .line 199
    const-string/jumbo v7, "CONFIG"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    .line 200
    .local v3, "properties":Ljava/util/Properties;
    const-string/jumbo v7, "iflytek_lingxi_uid"

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v4    # "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Properties;>;"
    :cond_1
    :goto_1
    move-object v6, v5

    .line 205
    .end local v5    # "uid":Ljava/lang/String;
    .restart local v6    # "uid":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v6    # "uid":Ljava/lang/String;
    .restart local v5    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "UidPersistentHelper"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic b(Lazy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lazy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lazy;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lazy;Z)Z
    .locals 0
    .param p0, "x0"    # Lazy;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lazy;->i:Z

    return p1
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lazy;->a:[B

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "UidPersistentHelper"

    const-string/jumbo v1, "initUid"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lazy;->a:[B

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v2, "com.iflytek.cmccUID_CACHE"

    invoke-virtual {v0, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazy;->g:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lazy;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lazy;->f:Landroid/content/Context;

    const-string/jumbo v2, "iflytek_lingxi_uid"

    invoke-static {v0, v2}, Lip;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazy;->g:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lazy;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lazy;->d()V

    .line 113
    monitor-exit v1

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lazy;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lazy;->a(Ljava/lang/String;)V

    .line 119
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string/jumbo v0, "UidPersistentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveUidAtThread mIsWriting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lazy;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lazy;->i:Z

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazy;->i:Z

    .line 244
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lazy$2;

    invoke-direct {v1, p0, p1}, Lazy$2;-><init>(Lazy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 126
    const-string/jumbo v0, "UidPersistentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySdUidAtThread mIsReading = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lazy;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lazy;->h:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazy;->h:Z

    .line 132
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lazy$1;

    invoke-direct {v1, p0}, Lazy$1;-><init>(Lazy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "UidPersistentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSdUid uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v0, Lazy;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lazy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lazy;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lazy;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "UidPersistentHelper"

    const-string/jumbo v2, "querySdUid"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string/jumbo v0, ""

    .line 154
    .local v0, "uid":Ljava/lang/String;
    sget-object v1, Lazy;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lazy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 183
    :goto_0
    monitor-exit p0

    return-object v1

    .line 160
    :cond_0
    :try_start_1
    sget-object v1, Lazy;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lazy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 162
    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lazy;->f:Landroid/content/Context;

    const-string/jumbo v2, "iflytek_ime_uid"

    invoke-static {v1, v2}, Lip;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 168
    goto :goto_0

    .line 172
    :cond_2
    sget-object v1, Lazy;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lazy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    .line 174
    goto :goto_0

    .line 178
    :cond_3
    sget-object v1, Lazy;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lazy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    .line 180
    goto :goto_0

    .line 183
    :cond_4
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "CONFIG"

    invoke-direct {p0, v0, v1}, Lazy;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v1, "iflytek_lingxi_uid"

    invoke-direct {p0, v0, v1, p1}, Lazy;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget-object v1, Lazy;->a:[B

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lazy;->g:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string/jumbo v1, "UidPersistentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUid uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v2, Lazy;->a:[B

    monitor-enter v2

    .line 214
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    monitor-exit v2

    .line 231
    :goto_0
    return-void

    .line 218
    :cond_0
    iput-object p1, p0, Lazy;->g:Ljava/lang/String;

    .line 221
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v3, "com.iflytek.cmccUID_CACHE"

    iget-object v4, p0, Lazy;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lazy;->f:Landroid/content/Context;

    const-string/jumbo v3, "iflytek_lingxi_uid"

    invoke-static {v1, v3}, Lip;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "uid2":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lazy;->f:Landroid/content/Context;

    const-string/jumbo v3, "iflytek_lingxi_uid"

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Lip;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    :cond_1
    invoke-direct {p0, p1}, Lazy;->c(Ljava/lang/String;)V

    .line 230
    monitor-exit v2

    goto :goto_0

    .end local v0    # "uid2":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
