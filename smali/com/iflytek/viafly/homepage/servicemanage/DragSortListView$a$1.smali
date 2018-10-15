.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;-><init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field final synthetic b:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a$1;->b:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a$1;->a:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a$1;->b:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;->notifyDataSetChanged()V

    .line 653
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a$1;->b:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$a;->notifyDataSetInvalidated()V

    .line 657
    return-void
.end method
