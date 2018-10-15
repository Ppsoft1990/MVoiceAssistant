.class public Lpn;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Laza;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    .line 59
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 46
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_1
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "grantResult":I
    if-nez v0, :cond_3

    .line 52
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0

    .line 55
    :cond_3
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 56
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    .line 57
    .local v1, "ret":Z
    if-eqz v1, :cond_4

    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->unrationale:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0

    .line 59
    .end local v1    # "ret":Z
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5
    sget-object v2, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Laza;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "grantResult":I
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-static {}, Laza;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
