.class public Lcom/baidu/aiupdatesdk/obf/ad;
.super Ljava/lang/Object;
.source "NdPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/ad$a;
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/aiupdatesdk/obf/ad$a;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/ad$a;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/obf/ad$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    .line 33
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/ad;->c:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/ad;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/aiupdatesdk/obf/ad;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 45
    :try_start_0
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/aiupdatesdk/obf/ad;->b:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 46
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v8, p0, Lcom/baidu/aiupdatesdk/obf/ad;->b:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/aiupdatesdk/obf/ad$a;->a:Ljava/lang/String;

    .line 47
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/aiupdatesdk/obf/ad$a;->b:Ljava/lang/String;

    .line 48
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v8, v7, Lcom/baidu/aiupdatesdk/obf/ad$a;->c:I

    .line 49
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v8, v7, Lcom/baidu/aiupdatesdk/obf/ad$a;->e:Ljava/lang/String;

    .line 50
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    .line 51
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 52
    .local v2, "intalledPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "sdcardPath":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/baidu/aiupdatesdk/obf/ad$a;->d:Z

    .line 66
    .end local v2    # "intalledPath":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "sdcardPath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 56
    .restart local v2    # "intalledPath":Ljava/lang/String;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "sdcardPath":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/baidu/aiupdatesdk/obf/ad$a;->d:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v2    # "intalledPath":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "sdcardPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    const/high16 v0, 0x40000

    .line 61
    .local v0, "FLAG_EXTERNAL_STORAGE":I
    :try_start_1
    iget-object v7, p0, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-nez v8, :cond_2

    :goto_1
    iput-boolean v5, v7, Lcom/baidu/aiupdatesdk/obf/ad$a;->d:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method
