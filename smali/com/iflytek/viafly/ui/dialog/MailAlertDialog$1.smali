.class Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$1;
.super Ljava/lang/Object;
.source "MailAlertDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    const-string/jumbo v0, "CmccMailAlertDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->access$001(Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)V

    .line 83
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 76
    const-string/jumbo v0, "CmccMailAlertDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 71
    const-string/jumbo v0, "CmccMailAlertDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method
