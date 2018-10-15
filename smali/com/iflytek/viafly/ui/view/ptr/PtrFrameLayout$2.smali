.class Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;
.super Ljava/util/ArrayList;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

.field final synthetic val$child1:Landroid/view/View;

.field final synthetic val$child2:Landroid/view/View;

.field final synthetic val$child3:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "x0"    # I

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->this$0:Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    iput-object p3, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child1:Landroid/view/View;

    iput-object p4, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child2:Landroid/view/View;

    iput-object p5, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child3:Landroid/view/View;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child1:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child2:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->val$child3:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout$2;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method
