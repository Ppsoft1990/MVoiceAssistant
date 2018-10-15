.class public Lrj;
.super Ljava/lang/Object;
.source "SchedulePerssmionHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLOSED"

    invoke-virtual {v5, v6, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "isPermissionClosed":Z
    invoke-static {}, Lhl;->k()I

    move-result v5

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 37
    if-nez v0, :cond_0

    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v5

    invoke-virtual {v5}, Lpb;->d()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 52
    :cond_0
    :goto_0
    return v3

    .line 42
    :cond_1
    invoke-static {p0}, Lrj;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    invoke-static {v2}, Lrj;->a(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLICKED_WHITELIST"

    invoke-virtual {v5, v6, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, "isWhiteListClicked":Z
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 52
    .end local v1    # "isWhiteListClicked":Z
    :cond_3
    if-nez v0, :cond_4

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const/4 v2, 0x0

    .line 125
    invoke-static {p0}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    .line 130
    .local v0, "permission":Lcom/iflytek/common/permission/data/Permission;
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionGuides()[Lcom/iflytek/common/permission/data/PermissionGuide;

    move-result-object v1

    .line 131
    .local v1, "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    invoke-static {v1}, Lrj;->a([Lcom/iflytek/common/permission/data/PermissionGuide;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static a([Lcom/iflytek/common/permission/data/PermissionGuide;)Z
    .locals 6
    .param p0, "permissionGuides"    # [Lcom/iflytek/common/permission/data/PermissionGuide;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-static {p0}, Lazz;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 145
    .local v0, "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u767d\u540d\u5355"

    invoke-static {v4, v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    invoke-static {p0}, Lrj;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 88
    :goto_0
    return-object v1

    .line 85
    :cond_0
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v0

    .line 86
    .local v0, "mgr":Laqv;
    const-string/jumbo v2, "bootcomplete|bootbackground"

    .line 87
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0, p0, v2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {p0}, Lrj;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :try_start_0
    invoke-static {p0}, Lrj;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 108
    const-string/jumbo v2, "bootcomplete|bootbackground"

    .line 109
    .local v2, "type":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SchedulePerssmionHelper"

    const-string/jumbo v4, "startPermissonActivity error"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "perList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/common/permission/data/Permission;

    invoke-static {p0, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
