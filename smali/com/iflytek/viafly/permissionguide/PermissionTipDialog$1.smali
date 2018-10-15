.class Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;
.super Ljava/lang/Object;
.source "PermissionTipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-static {v1}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "topActivity":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delayTask.run | topActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", targetPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-static {v3}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-class v1, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    .line 160
    invoke-static {v1}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;->a:Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->finish()V

    .line 165
    :cond_0
    return-void
.end method
