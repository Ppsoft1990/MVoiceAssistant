.class Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;
.super Ljava/lang/Object;
.source "FloatWindowPermissionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;->a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;->a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-static {v0}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->a(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;->a:Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-static {v0}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->a(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
