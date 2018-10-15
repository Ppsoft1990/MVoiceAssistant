.class Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;
.super Ljava/lang/Object;
.source "PermissonSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->c:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    iput-object p2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "timer":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->c:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    iget-object v3, v3, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->b(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 329
    const/4 v2, 0x0

    .line 330
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timer > 5, stop waiting"

    invoke-static {v3, v4}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_1
    return-void

    .line 333
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 334
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 336
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->c:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    iget-object v3, v3, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    const-class v4, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v3, "TIPS_INTENT_EXTRA"

    iget-object v4, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    const-string/jumbo v3, "targetPkg"

    iget-object v4, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2$1;->c:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;

    iget-object v3, v3, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$2;->a:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
