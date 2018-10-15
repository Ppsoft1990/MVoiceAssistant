.class Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "MailAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setPositiveButton(Landroid/widget/Button;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->access$100(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->access$100(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->val$dialog:Landroid/app/Dialog;

    const/4 v2, -0x1

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 295
    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;Ljava/lang/Object;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    return-void
.end method
