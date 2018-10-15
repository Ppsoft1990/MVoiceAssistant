.class Lov$1;
.super Ljava/lang/Object;
.source "PermissionLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lov;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lov;


# direct methods
.method constructor <init>(Lov;)V
    .locals 0
    .param p1, "this$0"    # Lov;

    .prologue
    .line 58
    iput-object p1, p0, Lov$1;->a:Lov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 62
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->a(Lov;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v5, "permissionApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, "appBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->b(Lov;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 67
    :try_start_0
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->a(Lov;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, p0, Lov$1;->a:Lov;

    .line 68
    invoke-static {v0}, Lov;->b(Lov;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 69
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_0

    .line 70
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->b(Lov;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->b(Lov;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_0

    .line 74
    const-string/jumbo v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    const-string/jumbo v0, "permissionApps"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PermissionLog"

    const-string/jumbo v4, "collectPermissionInfo not found app"

    invoke-static {v0, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const-string/jumbo v1, "IC00008"

    .line 85
    .local v1, "opCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    .local v2, "startTime":J
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->a(Lov;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v4, "success"

    invoke-virtual/range {v0 .. v5}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 90
    .end local v1    # "opCode":Ljava/lang/String;
    .end local v2    # "startTime":J
    .end local v5    # "permissionApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "appBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lov$1;->a:Lov;

    invoke-static {v0}, Lov;->a(Lov;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Low;->a(Landroid/content/Context;)Low;

    move-result-object v0

    const-string/jumbo v4, "PermissionSettings.KEY_UPLOAD"

    iget-object v10, p0, Lov$1;->a:Lov;

    .line 91
    invoke-static {v10}, Lov;->a(Lov;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lhl;->h(Landroid/content/Context;)I

    move-result v10

    .line 90
    invoke-virtual {v0, v4, v10}, Low;->setSetting(Ljava/lang/String;I)V

    .line 92
    return-void
.end method
