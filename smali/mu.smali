.class public Lmu;
.super Ljava/lang/Object;
.source "ApkItem.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/lang/String;

.field f:Landroid/content/pm/PackageInfo;

.field g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmu;->g:Z

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 24
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 26
    .local v2, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-direct {p0, p1, p3}, Lmu;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 30
    :goto_0
    if-eqz v2, :cond_0

    .line 31
    :try_start_1
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmu;->a:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 38
    :try_start_2
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmu;->b:Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    :cond_1
    :goto_2
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lmu;->c:Ljava/lang/String;

    .line 45
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lmu;->d:I

    .line 46
    iput-object p3, p0, Lmu;->e:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lmu;->f:Landroid/content/pm/PackageInfo;

    .line 48
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmu;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lmu;->b:Ljava/lang/CharSequence;

    goto :goto_2

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    const-string/jumbo v0, "android.content.res.AssetManager"

    .line 65
    .local v0, "PATH_AssetManager":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, "assetMagCls":Ljava/lang/Class;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 67
    .local v3, "assetMagCt":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "assetMag":Ljava/lang/Object;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/Class;

    .line 69
    .local v7, "typeArgs":[Ljava/lang/Class;
    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v9

    .line 70
    const-string/jumbo v9, "addAssetPath"

    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    .local v4, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Object;

    .line 73
    .local v8, "valueArgs":[Ljava/lang/Object;
    const/4 v9, 0x0

    aput-object p2, v8, v9

    .line 74
    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 76
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Class;

    .line 77
    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 78
    const/4 v9, 0x1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 79
    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 80
    const-class v9, Landroid/content/res/Resources;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 81
    .local v6, "resCt":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/Object;

    .line 82
    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 83
    const/4 v9, 0x1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    aput-object v10, v8, v9

    .line 84
    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    aput-object v10, v8, v9

    .line 85
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "res":Landroid/content/res/Resources;
    check-cast v5, Landroid/content/res/Resources;

    .line 86
    .restart local v5    # "res":Landroid/content/res/Resources;
    return-object v5
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmu;->e:Ljava/lang/String;

    return-object v0
.end method
