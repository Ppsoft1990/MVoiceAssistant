.class Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;
.super Ljava/lang/Object;
.source "HomeCmccContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->b(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "run: ClearAnimationRunable"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView$1;->a:Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;->a(Lcom/iflytek/viafly/homepage/cmcc/HomeCmccContentView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 618
    :cond_0
    return-void
.end method
