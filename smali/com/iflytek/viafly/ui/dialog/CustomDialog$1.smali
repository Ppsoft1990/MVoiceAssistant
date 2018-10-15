.class Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/CustomDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/CustomDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    const-string/jumbo v0, "CustomDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->access$000(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;->access$101(Lcom/iflytek/viafly/ui/dialog/CustomDialog;)V

    .line 118
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 110
    const-string/jumbo v0, "CustomDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 105
    const-string/jumbo v0, "CustomDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
