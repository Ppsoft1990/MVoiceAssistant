.class final Lo/gb;
.super Ljava/lang/Object;
.source "ChangeAvatarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/fz;


# direct methods
.method constructor <init>(Lo/fz;)V
    .locals 0

    iput-object p1, p0, Lo/gb;->a:Lo/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lo/gb;->a:Lo/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gb;->a:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gb;->a:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gb;->a:Lo/fz;

    invoke-static {v0}, Lo/fz;->a(Lo/fz;)Lo/fz$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gb;->a:Lo/fz;

    invoke-static {v0}, Lo/fz;->a(Lo/fz;)Lo/fz$a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lo/fz$a;->a:Lo/eu;

    iget-object v0, v0, Lo/eu;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
