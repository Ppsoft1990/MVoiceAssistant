.class Laku$1;
.super Ljava/lang/Object;
.source "GridLifeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laku;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

.field final synthetic b:I

.field final synthetic c:Laku;


# direct methods
.method constructor <init>(Laku;Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V
    .locals 0
    .param p1, "this$0"    # Laku;

    .prologue
    .line 105
    iput-object p1, p0, Laku$1;->c:Laku;

    iput-object p2, p0, Laku$1;->a:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    iput p3, p0, Laku$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Laku$1;->c:Laku;

    invoke-static {v0}, Laku;->a(Laku;)Laku$a;

    move-result-object v0

    iget-object v1, p0, Laku$1;->a:Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;

    iget v2, p0, Laku$1;->b:I

    invoke-interface {v0, v1, v2}, Laku$a;->a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;I)V

    .line 109
    return-void
.end method
