.class Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;
.super Ljava/lang/Object;
.source "ServiceManageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->b(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$3;->a:Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a(Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;)Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity$a;->a(I)Laic;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/servicemanage/ServiceManageActivity;->a(Laic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ServiceManageActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
