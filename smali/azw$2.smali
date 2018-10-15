.class Lazw$2;
.super Ljava/lang/Object;
.source "SoftBarUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazw;


# direct methods
.method constructor <init>(Lazw;)V
    .locals 0
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 194
    iput-object p1, p0, Lazw$2;->a:Lazw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lazw$2;->a:Lazw;

    invoke-static {v1}, Lazw;->f(Lazw;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method
