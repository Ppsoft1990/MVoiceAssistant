.class Lcom/iflytek/viafly/ui/SimpleDialog$1;
.super Ljava/lang/Object;
.source "SimpleDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/SimpleDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/SimpleDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/SimpleDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/SimpleDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 101
    const-string/jumbo v0, "SimpleDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->access$000(Lcom/iflytek/viafly/ui/SimpleDialog;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->access$101(Lcom/iflytek/viafly/ui/SimpleDialog;)V

    .line 104
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    const-string/jumbo v0, "SimpleDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 91
    const-string/jumbo v0, "SimpleDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
