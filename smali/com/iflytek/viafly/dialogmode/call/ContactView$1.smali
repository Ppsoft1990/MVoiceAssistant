.class Lcom/iflytek/viafly/dialogmode/call/ContactView$1;
.super Ljava/lang/Object;
.source "ContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/ContactView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dialogmode/call/ContactView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/ContactView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/ContactView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;->a:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;->a:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;->a:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;->a:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->b(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/viafly/dialogmode/call/ContactView$1;->a:Lcom/iflytek/viafly/dialogmode/call/ContactView;

    invoke-static {v3}, Lcom/iflytek/viafly/dialogmode/call/ContactView;->a(Lcom/iflytek/viafly/dialogmode/call/ContactView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    :cond_1
    move v1, v2

    .line 72
    goto :goto_1
.end method
