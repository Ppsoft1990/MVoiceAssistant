.class final Lo/ga;
.super Ljava/lang/Object;
.source "ChangeAvatarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/fz;


# direct methods
.method constructor <init>(Lo/fz;)V
    .locals 0

    iput-object p1, p0, Lo/ga;->a:Lo/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lo/ga;->a:Lo/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ga;->a:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ga;->a:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/ga;->a:Lo/fz;

    invoke-static {v0}, Lo/fz;->a(Lo/fz;)Lo/fz$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ga;->a:Lo/fz;

    invoke-static {v0}, Lo/fz;->a(Lo/fz;)Lo/fz$a;

    move-result-object v0

    iget-object v1, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v1, v1, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    iget-object v2, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v2, v2, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CAMERA"

    invoke-static {v1, v2, v3}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    iget-object v3, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v3, v3, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->h(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v2, v2, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "permission CAMERA not granted"

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v0, v0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-string/jumbo v1, "\u8bf7\u5f00\u542f\u76f8\u673a\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
