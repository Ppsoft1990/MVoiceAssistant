.class Lcom/iflytek/common/adaptation/ui/AdaptationDialog$1;
.super Ljava/lang/Object;
.source "AdaptationDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/ui/AdaptationDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/common/adaptation/ui/AdaptationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/ui/AdaptationDialog;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog$1;->this$0:Lcom/iflytek/common/adaptation/ui/AdaptationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 163
    const-string/jumbo v0, "AdaptationDialog"

    const-string/jumbo v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog$1;->this$0:Lcom/iflytek/common/adaptation/ui/AdaptationDialog;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->access$001(Lcom/iflytek/common/adaptation/ui/AdaptationDialog;)V

    .line 165
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 158
    const-string/jumbo v0, "AdaptationDialog"

    const-string/jumbo v1, "onAnimationRepeat()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 153
    const-string/jumbo v0, "AdaptationDialog"

    const-string/jumbo v1, "onAnimationStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
