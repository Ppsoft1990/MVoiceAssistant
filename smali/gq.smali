.class public Lgq;
.super Ljava/lang/Object;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgq$a;
    }
.end annotation


# static fields
.field static volatile a:Lgq;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lgq$a;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Ljava/lang/Object;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lgq;->c:Lgq$a;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgq;->e:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgq;->f:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgq;->h:Z

    .line 84
    iput-object p1, p0, Lgq;->b:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgq;->g:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lgq;->f()V

    .line 87
    iget-object v0, p0, Lgq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    .line 88
    invoke-direct {p0}, Lgq;->c()V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;)Lgq;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lgq;->a:Lgq;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lgq;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lgq;->a:Lgq;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lgq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lgq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgq;->a:Lgq;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lgq;->a:Lgq;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lgq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lgq;

    .prologue
    .line 37
    iget-object v0, p0, Lgq;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lgq;Lgq$a;)V
    .locals 0
    .param p0, "x0"    # Lgq;
    .param p1, "x1"    # Lgq$a;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lgq;->b(Lgq$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v2

    .line 837
    :cond_1
    const/4 v1, 0x0

    .line 839
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 840
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 844
    :goto_1
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "AppManager"

    const-string/jumbo v4, "get packageinfo failed"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 777
    if-nez p1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return v5

    .line 781
    :cond_1
    if-eqz p2, :cond_2

    array-length v7, p2

    if-nez v7, :cond_3

    :cond_2
    move v5, v6

    .line 782
    goto :goto_0

    .line 785
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 786
    .local v3, "sharedPkgList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-eqz v7, :cond_0

    .line 790
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p2

    if-ge v1, v7, :cond_6

    .line 791
    aget-object v2, p2, v1

    .line 792
    .local v2, "perm":Ljava/lang/String;
    const/4 v0, 0x0

    .line 793
    .local v0, "bFlag":Z
    array-length v8, v3

    move v7, v5

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v4, v3, v7

    .line 794
    .local v4, "str":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 795
    const/4 v0, 0x1

    .line 799
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 793
    .restart local v4    # "str":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v0    # "bFlag":Z
    .end local v2    # "perm":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    move v5, v6

    .line 804
    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string/jumbo v0, ""

    .line 249
    .local v0, "filePath":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "app.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 887
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v3, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 889
    .local v0, "apiLevel":I
    const/16 v5, 0x9

    if-lt v0, v5, :cond_0

    .line 890
    const-string/jumbo v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string/jumbo v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 893
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 903
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 904
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 908
    .end local v0    # "apiLevel":I
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 896
    .restart local v0    # "apiLevel":I
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    const-string/jumbo v1, "pkg"

    .line 898
    .local v1, "appPkgName":Ljava/lang/String;
    :goto_2
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 905
    .end local v0    # "apiLevel":I
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AppManager"

    const-string/jumbo v6, "openInstalledAppDetails error"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 896
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "apiLevel":I
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "com.android.settings.ApplicationPkgName"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private b(Lgq$a;)V
    .locals 7
    .param p1, "listener"    # Lgq$a;

    .prologue
    const/4 v6, 0x1

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lgq;->c:Lgq$a;

    .line 222
    invoke-direct {p0}, Lgq;->d()V

    .line 223
    iget-object v5, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v5, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 227
    .local v4, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 228
    iget-object v5, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/app/AppItem;

    invoke-virtual {v5}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    :cond_2
    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->a([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "newAppString":Ljava/lang/String;
    iget-object v5, p0, Lgq;->b:Landroid/content/Context;

    invoke-direct {p0, v5}, Lgq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "appFile":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "oldAppString":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    const-string/jumbo v5, "AppManager"

    const-string/jumbo v6, "queryAllAppNamesImpl not change."

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v5, p0, Lgq;->c:Lgq$a;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lgq$a;->a([Ljava/lang/String;Z)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {v0, v2, v6}, Lcom/iflytek/yd/util/FileManager;->writeString(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 242
    iget-object v5, p0, Lgq;->c:Lgq$a;

    invoke-interface {v5, v4, v6}, Lgq$a;->a([Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 92
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_APP_CACHE"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "cacheApps":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 95
    iget-object v6, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 96
    :try_start_0
    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "appItems":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 98
    array-length v7, v1

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v1, v5

    .line 99
    .local v0, "appItem":Ljava/lang/String;
    const-string/jumbo v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "tempItems":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v8, v4

    if-le v8, v9, :cond_0

    .line 101
    new-instance v3, Lcom/iflytek/base/app/AppItem;

    invoke-direct {v3}, Lcom/iflytek/base/app/AppItem;-><init>()V

    .line 102
    .local v3, "item":Lcom/iflytek/base/app/AppItem;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v3, v8}, Lcom/iflytek/base/app/AppItem;->setPackageName(Ljava/lang/String;)V

    .line 103
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v3, v8}, Lcom/iflytek/base/app/AppItem;->setAppName(Ljava/lang/String;)V

    .line 104
    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v3, v8}, Lcom/iflytek/base/app/AppItem;->setAppClassName(Ljava/lang/String;)V

    .line 105
    iget-object v8, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "item":Lcom/iflytek/base/app/AppItem;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "appItem":Ljava/lang/String;
    .end local v4    # "tempItems":[Ljava/lang/String;
    :cond_1
    monitor-exit v6

    .line 111
    .end local v1    # "appItems":[Ljava/lang/String;
    :cond_2
    return-void

    .line 109
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private d()V
    .locals 14

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0}, Lgq;->e()V

    .line 155
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v11, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    const/4 v12, 0x1

    .line 158
    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 161
    .local v8, "launchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 162
    const-string/jumbo v11, "AppManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "queryAllApps size is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 163
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 162
    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v1, "appStringBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 166
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 167
    .local v10, "tempInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    .line 168
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 169
    .local v9, "packageName":Ljava/lang/String;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 170
    .local v2, "className":Ljava/lang/String;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    .line 171
    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "appName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 173
    new-instance v7, Lcom/iflytek/base/app/AppItem;

    invoke-direct {v7}, Lcom/iflytek/base/app/AppItem;-><init>()V

    .line 174
    .local v7, "item":Lcom/iflytek/base/app/AppItem;
    invoke-virtual {v7, v9}, Lcom/iflytek/base/app/AppItem;->setPackageName(Ljava/lang/String;)V

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/iflytek/base/app/AppItem;->setAppName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v7, v2}, Lcom/iflytek/base/app/AppItem;->setAppClassName(Ljava/lang/String;)V

    .line 177
    iget-object v11, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v11, "&"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v11, "&"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v5, v11, :cond_0

    .line 184
    const-string/jumbo v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .end local v0    # "appName":Ljava/lang/CharSequence;
    .end local v2    # "className":Ljava/lang/String;
    .end local v7    # "item":Lcom/iflytek/base/app/AppItem;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 189
    .end local v10    # "tempInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lgq;->h:Z

    .line 190
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccIFLY_APP_CACHE"

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 191
    invoke-virtual {v11, v12, v13}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v1    # "appStringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "launchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_1
    return-void

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "AppManager"

    const-string/jumbo v12, "queryAllApps error"

    invoke-static {v11, v12, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 198
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v11, "AppManager"

    const-string/jumbo v12, "queryAllApps error"

    invoke-static {v11, v12, v4}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    :cond_0
    return-void
.end method

.method private f()V
    .locals 29

    .prologue
    .line 470
    sget-object v27, Lgq;->g:Ljava/util/List;

    if-eqz v27, :cond_16

    .line 471
    sget-object v15, Lgr;->a:[Ljava/lang/String;

    .line 472
    .local v15, "mailMaps":[Ljava/lang/String;
    if-eqz v15, :cond_0

    array-length v0, v15

    move/from16 v27, v0

    if-lez v27, :cond_0

    .line 473
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 474
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v22, Lgr;->b:[Ljava/lang/String;

    .line 477
    .local v22, "scheduleMaps":[Ljava/lang/String;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_1

    .line 478
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 479
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v17, Lgr;->c:[Ljava/lang/String;

    .line 482
    .local v17, "musicMaps":[Ljava/lang/String;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_2

    .line 483
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 484
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v6, Lgr;->d:[Ljava/lang/String;

    .line 487
    .local v6, "browserMaps":[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v0, v6

    move/from16 v27, v0

    if-lez v27, :cond_3

    .line 488
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 489
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v19, Lgr;->e:[Ljava/lang/String;

    .line 492
    .local v19, "pictureMaps":[Ljava/lang/String;
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_4

    .line 493
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 494
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v13, Lgr;->f:[Ljava/lang/String;

    .line 497
    .local v13, "fileMaps":[Ljava/lang/String;
    if-eqz v13, :cond_5

    array-length v0, v13

    move/from16 v27, v0

    if-lez v27, :cond_5

    .line 498
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 499
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v23, Lgr;->h:[Ljava/lang/String;

    .line 502
    .local v23, "settingMaps":[Ljava/lang/String;
    if-eqz v23, :cond_7

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_7

    .line 504
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgq;->b:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v27

    .line 505
    invoke-virtual/range {v27 .. v27}, Lgs;->c()Z

    move-result v27

    if-nez v27, :cond_6

    .line 506
    const-string/jumbo v27, "\u84dd\u7259"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lgq;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 512
    :cond_6
    :goto_0
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 513
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v25, Lgr;->g:[Ljava/lang/String;

    .line 516
    .local v25, "videoMaps":[Ljava/lang/String;
    if-eqz v25, :cond_8

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_8

    .line 517
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 518
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    sget-object v21, Lgr;->i:[Ljava/lang/String;

    .line 521
    .local v21, "recordMaps":[Ljava/lang/String;
    if-eqz v21, :cond_9

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_9

    .line 522
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 523
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    sget-object v18, Lgr;->j:[Ljava/lang/String;

    .line 526
    .local v18, "pictureEditMaps":[Ljava/lang/String;
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_a

    .line 527
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 528
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    sget-object v20, Lgr;->k:[Ljava/lang/String;

    .line 531
    .local v20, "radioMaps":[Ljava/lang/String;
    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_b

    .line 532
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 533
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    sget-object v16, Lgr;->l:[Ljava/lang/String;

    .line 536
    .local v16, "memoMaps":[Ljava/lang/String;
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_c

    .line 537
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 538
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    sget-object v10, Lgr;->m:[Ljava/lang/String;

    .line 541
    .local v10, "contactMaps":[Ljava/lang/String;
    if-eqz v10, :cond_d

    array-length v0, v10

    move/from16 v27, v0

    if-lez v27, :cond_d

    .line 542
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 543
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    sget-object v24, Lgr;->n:[Ljava/lang/String;

    .line 546
    .local v24, "smsMaps":[Ljava/lang/String;
    if-eqz v24, :cond_e

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_e

    .line 547
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 548
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    sget-object v11, Lgr;->o:[Ljava/lang/String;

    .line 551
    .local v11, "dialMaps":[Ljava/lang/String;
    if-eqz v11, :cond_f

    array-length v0, v11

    move/from16 v27, v0

    if-lez v27, :cond_f

    .line 552
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 553
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    sget-object v5, Lgr;->p:[Ljava/lang/String;

    .line 556
    .local v5, "backupMaps":[Ljava/lang/String;
    if-eqz v5, :cond_10

    array-length v0, v5

    move/from16 v27, v0

    if-lez v27, :cond_10

    .line 557
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 558
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    sget-object v4, Lgr;->q:[Ljava/lang/String;

    .line 561
    .local v4, "appsMaps":[Ljava/lang/String;
    if-eqz v4, :cond_11

    array-length v0, v4

    move/from16 v27, v0

    if-lez v27, :cond_11

    .line 562
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 563
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    sget-object v7, Lgr;->s:[Ljava/lang/String;

    .line 566
    .local v7, "callMaps":[Ljava/lang/String;
    if-eqz v7, :cond_12

    array-length v0, v7

    move/from16 v27, v0

    if-lez v27, :cond_12

    .line 567
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 568
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    sget-object v9, Lgr;->r:[Ljava/lang/String;

    .line 571
    .local v9, "clockMaps":[Ljava/lang/String;
    if-eqz v9, :cond_13

    array-length v0, v9

    move/from16 v27, v0

    if-lez v27, :cond_13

    .line 572
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 573
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    sget-object v8, Lgr;->t:[Ljava/lang/String;

    .line 576
    .local v8, "cameraMaps":[Ljava/lang/String;
    if-eqz v8, :cond_14

    array-length v0, v8

    move/from16 v27, v0

    if-lez v27, :cond_14

    .line 577
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 578
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    sget-object v3, Lgr;->u:[Ljava/lang/String;

    .line 581
    .local v3, "angryBirds":[Ljava/lang/String;
    if-eqz v3, :cond_15

    array-length v0, v3

    move/from16 v27, v0

    if-lez v27, :cond_15

    .line 582
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 583
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    sget-object v26, Lgr;->v:[Ljava/lang/String;

    .line 586
    .local v26, "zomBies":[Ljava/lang/String;
    if-eqz v26, :cond_16

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_16

    .line 587
    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 588
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v27, Lgq;->g:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v3    # "angryBirds":[Ljava/lang/String;
    .end local v4    # "appsMaps":[Ljava/lang/String;
    .end local v5    # "backupMaps":[Ljava/lang/String;
    .end local v6    # "browserMaps":[Ljava/lang/String;
    .end local v7    # "callMaps":[Ljava/lang/String;
    .end local v8    # "cameraMaps":[Ljava/lang/String;
    .end local v9    # "clockMaps":[Ljava/lang/String;
    .end local v10    # "contactMaps":[Ljava/lang/String;
    .end local v11    # "dialMaps":[Ljava/lang/String;
    .end local v13    # "fileMaps":[Ljava/lang/String;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "mailMaps":[Ljava/lang/String;
    .end local v16    # "memoMaps":[Ljava/lang/String;
    .end local v17    # "musicMaps":[Ljava/lang/String;
    .end local v18    # "pictureEditMaps":[Ljava/lang/String;
    .end local v19    # "pictureMaps":[Ljava/lang/String;
    .end local v20    # "radioMaps":[Ljava/lang/String;
    .end local v21    # "recordMaps":[Ljava/lang/String;
    .end local v22    # "scheduleMaps":[Ljava/lang/String;
    .end local v23    # "settingMaps":[Ljava/lang/String;
    .end local v24    # "smsMaps":[Ljava/lang/String;
    .end local v25    # "videoMaps":[Ljava/lang/String;
    .end local v26    # "zomBies":[Ljava/lang/String;
    :cond_16
    return-void

    .line 508
    .restart local v6    # "browserMaps":[Ljava/lang/String;
    .restart local v13    # "fileMaps":[Ljava/lang/String;
    .restart local v15    # "mailMaps":[Ljava/lang/String;
    .restart local v17    # "musicMaps":[Ljava/lang/String;
    .restart local v19    # "pictureMaps":[Ljava/lang/String;
    .restart local v22    # "scheduleMaps":[Ljava/lang/String;
    .restart local v23    # "settingMaps":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 509
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "AppManager"

    const-string/jumbo v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .param p2, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 623
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    :cond_0
    const/4 v3, -0x1

    .line 640
    :goto_0
    return v3

    .line 627
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v1, "distances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 630
    .local v0, "distance":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 634
    .end local v0    # "distance":I
    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    new-instance v3, Lgq$2;

    invoke-direct {v3, p0}, Lgq$2;-><init>(Lgq;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 640
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 135
    const-string/jumbo v2, "AppManager"

    const-string/jumbo v3, "packageName is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    .line 146
    :cond_0
    :goto_0
    return-object v1

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 139
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 141
    :try_start_0
    iget-object v2, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AppManager"

    const-string/jumbo v3, "getApplicationInfo()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    .local p3, "excludeApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 736
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 739
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 743
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 744
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 773
    :cond_1
    return-object v0

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "AppManager"

    const-string/jumbo v8, "findAppByPermissions | error"

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 747
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 749
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 750
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 753
    if-eqz p3, :cond_4

    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 757
    :cond_4
    const-string/jumbo v8, "com.android"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 760
    const/4 v4, 0x0

    .line 762
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 764
    invoke-direct {p0, v4, p2}, Lgq;->a(Landroid/content/pm/PackageInfo;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 765
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 767
    :catch_1
    move-exception v1

    .line 769
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "AppManager"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Lcom/iflytek/base/app/AppItem;)V
    .locals 5
    .param p1, "appItem"    # Lcom/iflytek/base/app/AppItem;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;

    sget-object v2, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->launch:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    .line 273
    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;-><init>(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;)V

    .line 274
    return-void
.end method

.method public a(Lgq$a;)V
    .locals 2
    .param p1, "listener"    # Lgq$a;

    .prologue
    .line 117
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgq$1;

    invoke-direct {v1, p0, p1}, Lgq$1;-><init>(Lgq;Lgq$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public a(Lgq$a;Z)V
    .locals 3
    .param p1, "listener"    # Lgq$a;
    .param p2, "isRestart"    # Z

    .prologue
    .line 209
    iget-object v1, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    const-string/jumbo v0, "AppManager"

    const-string/jumbo v2, "initQueryApp | restart process is true | app grammar ok"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    monitor-exit v1

    .line 217
    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lgq;->b(Lgq$a;)V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 283
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    iget-object v3, p0, Lgq;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;

    move-result-object v3

    new-instance v4, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;

    sget-object v5, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->launch:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;-><init>(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;->a(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;)V

    .line 316
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 291
    :cond_1
    iget-object v3, p0, Lgq;->d:Landroid/content/pm/PackageManager;

    .line 292
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 293
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lgq;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    if-eqz p1, :cond_0

    :try_start_1
    const-string/jumbo v3, "com.android.settings"

    .line 303
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 305
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x34000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v3, p0, Lgq;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 312
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 313
    .local v1, "e1":Ljava/lang/Exception;
    const-string/jumbo v3, "AppManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 458
    iget-object v2, p0, Lgq;->b:Landroid/content/Context;

    .line 459
    invoke-direct {p0, v2}, Lgq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "cacheStrings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    const-string/jumbo v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "caches":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 466
    .end local v1    # "caches":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "str_array"    # [Ljava/lang/String;
    .param p2, "str_remove"    # Ljava/lang/String;

    .prologue
    .line 653
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 654
    .local v1, "hash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 655
    aget-object v4, p1, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 656
    aget-object v4, p1, v2

    aget-object v5, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 660
    .local v3, "str_new":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 661
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 662
    .local v0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 666
    :cond_2
    return-object v3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/app/AppItem;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 331
    .local v0, "appItem":Lcom/iflytek/base/app/AppItem;
    iget-object v4, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 332
    :try_start_0
    iget-object v3, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/app/AppItem;

    .line 333
    .local v2, "item":Lcom/iflytek/base/app/AppItem;
    const-string/jumbo v5, "AppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "---------->> item:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "appName":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 336
    const-string/jumbo v1, ""

    .line 338
    :cond_3
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 340
    const-string/jumbo v5, "\u767e\u5ea6\u5730\u56fe"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 341
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    :cond_5
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    move-object v0, v2

    .line 344
    const-string/jumbo v3, "AppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "---------->> appItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "item":Lcom/iflytek/base/app/AppItem;
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_0

    .line 391
    const/4 v6, 0x0

    .line 449
    :goto_0
    return-object v6

    .line 394
    :cond_0
    const/4 v3, 0x0

    .line 395
    .local v3, "minDistanceItem":Lcom/iflytek/base/app/AppItem;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v6, "tmpItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    iget-object v8, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v8

    .line 397
    :try_start_0
    iget-object v7, p0, Lgq;->f:Ljava/util/List;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 398
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgq;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 400
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .restart local v0    # "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_2
    iget-object v7, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/app/AppItem;

    .line 404
    .local v2, "item":Lcom/iflytek/base/app/AppItem;
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "sourceName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p0, v0, v4}, Lgq;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "tmpDistance":I
    const-string/jumbo v9, "AppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "source name  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "string distance = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string/jumbo v9, "AppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appname"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " classname"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-nez v5, :cond_6

    .line 420
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/iflytek/base/app/AppItem;->setDistance(Ljava/lang/String;)V

    .line 421
    move-object v3, v2

    .line 442
    .end local v0    # "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "item":Lcom/iflytek/base/app/AppItem;
    .end local v4    # "sourceName":Ljava/lang/String;
    .end local v5    # "tmpDistance":I
    :cond_4
    if-eqz v3, :cond_5

    .line 443
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 444
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_5
    new-instance v1, Lgp;

    invoke-direct {v1}, Lgp;-><init>()V

    .line 447
    .local v1, "comparator":Lgp;
    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    monitor-exit v8

    goto/16 :goto_0

    .end local v1    # "comparator":Lgp;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 432
    .restart local v0    # "appGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "item":Lcom/iflytek/base/app/AppItem;
    .restart local v4    # "sourceName":Ljava/lang/String;
    .restart local v5    # "tmpDistance":I
    :cond_6
    const/4 v9, 0x1

    if-eq v5, v9, :cond_7

    const/4 v9, 0x3

    if-ge v5, v9, :cond_3

    .line 434
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 435
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 436
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/iflytek/base/app/AppItem;->setDistance(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v1, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    iget-object v0, p0, Lgq;->f:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "searchName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lgq;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lgq;->g:Ljava/util/List;

    .line 608
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    const-string/jumbo v1, "AppManager"

    const-string/jumbo v2, "convertAppNames | searchName is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    .line 612
    :cond_1
    sget-object v1, Lgq;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 613
    .local v0, "appDefaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 618
    .end local v0    # "appDefaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    :goto_0
    return v1

    .line 814
    :cond_0
    iget-boolean v2, p0, Lgq;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgq;->f:Ljava/util/List;

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 815
    :cond_1
    iget-object v1, p0, Lgq;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 817
    :cond_2
    iget-object v2, p0, Lgq;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 818
    :try_start_0
    iget-object v3, p0, Lgq;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/app/AppItem;

    .line 819
    .local v0, "item":Lcom/iflytek/base/app/AppItem;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 820
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 824
    .end local v0    # "item":Lcom/iflytek/base/app/AppItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 823
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
