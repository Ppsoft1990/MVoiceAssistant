.class Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

.field final synthetic val$cardCategoryItem:Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

.field final synthetic val$wrapper:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->val$wrapper:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;

    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->val$cardCategoryItem:Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;)Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->val$wrapper:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;->access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;)Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;->val$cardCategoryItem:Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryGridView$ICategoryClickItem;->itemClick(Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;)V

    .line 109
    :cond_0
    return-void
.end method
