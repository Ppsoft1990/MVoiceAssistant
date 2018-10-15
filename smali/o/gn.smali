.class final Lo/gn;
.super Ljava/lang/Object;
.source "SmsBlackListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lo/gl;


# direct methods
.method constructor <init>(Lo/gl;)V
    .locals 0

    iput-object p1, p0, Lo/gn;->a:Lo/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lo/gn;->a:Lo/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gn;->a:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gn;->a:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->dismiss()V

    :cond_0
    iget-object v0, p0, Lo/gn;->a:Lo/gl;

    invoke-static {v0}, Lo/gl;->a(Lo/gl;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/gn;->a:Lo/gl;

    invoke-static {v3}, Lo/gl;->b(Lo/gl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "sms_body"

    const-string/jumbo v2, "YC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lo/gn;->a:Lo/gl;

    invoke-static {v1}, Lo/gl;->c(Lo/gl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
