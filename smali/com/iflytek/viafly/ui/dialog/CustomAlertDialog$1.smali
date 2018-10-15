.class Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    const-string/jumbo v0, "CustomAlertDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->access$001(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V

    .line 91
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    const-string/jumbo v0, "CustomAlertDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    const-string/jumbo v0, "CustomAlertDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
