.class Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;
.super Ljava/lang/Object;
.source "PermissonSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/common/permission/data/PermissionGuide;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    .local v2, "current":J
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)J

    move-result-wide v10

    sub-long v10, v2, v10

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 290
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10, v2, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;J)J

    .line 291
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "you click to fast..."

    invoke-static {v10, v11}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10, v2, v3}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;J)J

    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/common/permission/data/PermissionGuide;

    .line 298
    .local v4, "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;)Lcom/iflytek/common/permission/data/Permission;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "pkg":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 300
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "guideItemLayout onClick pkg is null"

    invoke-static {v10, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v4    # "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "guideItemLayout onClick"

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "guide":Lcom/iflytek/common/permission/data/PermissionGuide;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v5, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10, v6}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 307
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 308
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-virtual {v4}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuidePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v5, v11}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 309
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-virtual {v10, v5}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    const-string/jumbo v10, "targetActivity"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "targetActivity":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 313
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 315
    :cond_2
    move-object v8, v7

    .line 317
    .local v8, "targetPkg":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideDescription()Ljava/lang/String;

    move-result-object v9

    .line 318
    .local v9, "tips":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 320
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;

    invoke-direct {v11, p0, v8, v9}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;-><init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :cond_3
    iget-object v10, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-static {v10, v4}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Lcom/iflytek/common/permission/data/PermissionGuide;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
