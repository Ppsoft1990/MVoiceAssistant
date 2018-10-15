.class Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;
.super Ljava/lang/Object;
.source "SimCardSelectDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;->this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 212
    const-string/jumbo v0, "SimCardSelectDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;->this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->access$000(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;I)V

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;->this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->access$101(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;)V

    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;->this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->access$202(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;Z)Z

    .line 216
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog$2;->this$0:Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;

    invoke-static {v0, v2}, Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;->access$302(Lcom/iflytek/viafly/ui/dialog/SimCardSelectDialog;Z)Z

    .line 217
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 207
    const-string/jumbo v0, "SimCardSelectDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    const-string/jumbo v0, "SimCardSelectDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method
