.class public Lcom/baidu/aiupdatesdk/obf/e;
.super Ljava/lang/Object;
.source "AsDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/e$b;,
        Lcom/baidu/aiupdatesdk/obf/e$c;,
        Lcom/baidu/aiupdatesdk/obf/e$d;,
        Lcom/baidu/aiupdatesdk/obf/e$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcom/baidu/aiupdatesdk/obf/e;

.field private static c:Lcom/baidu/aiupdatesdk/obf/e$a;

.field private static d:Lcom/baidu/aiupdatesdk/obf/e$d;


# instance fields
.field private e:Lcom/baidu/aiupdatesdk/obf/g;

.field private f:Lcom/baidu/aiupdatesdk/obf/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "1012700a"

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/e;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e;->f:Lcom/baidu/aiupdatesdk/obf/e$b;

    return-object v0
.end method

.method public static a()Lcom/baidu/aiupdatesdk/obf/e;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->b:Lcom/baidu/aiupdatesdk/obf/e;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/e;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/obf/e;-><init>()V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/e;->b:Lcom/baidu/aiupdatesdk/obf/e;

    .line 41
    :cond_0
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->b:Lcom/baidu/aiupdatesdk/obf/e;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/e;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->d(Landroid/content/Context;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "com.baidu.appsearch.apk"

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/obf/e;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/e;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/e;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.baidu.appsearch"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "sdDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 113
    :cond_0
    if-eqz v1, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v2, "/appsearchcache/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 116
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/sdcard"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/aiupdatesdk/obf/e;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/e;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/baidu/aiupdatesdk/obf/e$a;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->c:Lcom/baidu/aiupdatesdk/obf/e$a;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/aiupdatesdk/obf/e$a;-><init>(Lcom/baidu/aiupdatesdk/obf/e$1;)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/e;->c:Lcom/baidu/aiupdatesdk/obf/e$a;

    .line 126
    :cond_0
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->c:Lcom/baidu/aiupdatesdk/obf/e$a;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/e;->e()Lcom/baidu/aiupdatesdk/obf/e$d;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 133
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 135
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private e()Lcom/baidu/aiupdatesdk/obf/e$d;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->d:Lcom/baidu/aiupdatesdk/obf/e$d;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/aiupdatesdk/obf/e$d;-><init>(Lcom/baidu/aiupdatesdk/obf/e$1;)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/e;->d:Lcom/baidu/aiupdatesdk/obf/e$d;

    .line 145
    :cond_0
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/e;->d:Lcom/baidu/aiupdatesdk/obf/e$d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/e;->d()Lcom/baidu/aiupdatesdk/obf/e$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 65
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 67
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/e$b;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/baidu/aiupdatesdk/obf/e$b;

    .prologue
    .line 45
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/e;->f:Lcom/baidu/aiupdatesdk/obf/e$b;

    .line 46
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e;->e:Lcom/baidu/aiupdatesdk/obf/g;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e;->e:Lcom/baidu/aiupdatesdk/obf/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/aiupdatesdk/obf/g;->a(Z)V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e;->e:Lcom/baidu/aiupdatesdk/obf/g;

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "path":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 53
    .local v4, "fileSize":J
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->d(Landroid/content/Context;)V

    .line 55
    new-instance v1, Lcom/baidu/aiupdatesdk/obf/g;

    invoke-direct {v1}, Lcom/baidu/aiupdatesdk/obf/g;-><init>()V

    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e;->e:Lcom/baidu/aiupdatesdk/obf/g;

    .line 56
    const-string/jumbo v1, "http://dl.ops.baidu.com/appsearch_AndroidPhone_ChannelID.apk"

    const-string/jumbo v2, "ChannelID"

    sget-object v3, Lcom/baidu/aiupdatesdk/obf/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e;->e:Lcom/baidu/aiupdatesdk/obf/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/baidu/aiupdatesdk/obf/e$c;

    invoke-direct {v7, p0, p1}, Lcom/baidu/aiupdatesdk/obf/e$c;-><init>(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/aiupdatesdk/obf/g;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/baidu/aiupdatesdk/obf/g$c;)Z

    .line 59
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
